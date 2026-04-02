## Query 7 — ROI Scorecard (Channel Priority Framework)

**Business question:** Where should budget be invested or cut?  
**Purpose:** Uses two CTEs — one for channel metrics, one for the site-average RPS — then applies a CASE WHEN decision framework to assign every channel a PROTECT / GROW / INVESTIGATE / CUT priority label. Produces the final budget reallocation recommendation.

| Label | Criteria |
|---|---|
| PROTECT | CR ≥ 2% AND RPS ≥ site average |
| GROW | CR ≥ 1% AND RPS ≥ site average |
| INVESTIGATE | Sessions ≥ 50,000 AND CR ≥ 0.5% |
| CUT OR OPTIMISE | All other channels |
```sql
WITH channel_metrics AS (
  SELECT
    channelGrouping                                                    AS channel,
    COUNT(*)                                                           AS sessions,
    ROUND(COUNTIF(totals.transactions >= 1) / COUNT(*) * 100, 2)     AS conversion_rate_pct,
    ROUND(SUM(totals.transactionRevenue) / 1000000, 2)                AS revenue_usd,
    ROUND(SUM(totals.transactionRevenue) / 1000000 / COUNT(*), 2)    AS revenue_per_session,
    ROUND(
      SUM(totals.transactionRevenue) / 1000000
      / NULLIF(SUM(totals.transactions), 0), 2
    )                                                                  AS avg_order_value,
    ROUND(COUNTIF(totals.bounces = 1) / COUNT(*) * 100, 2)           AS bounce_rate_pct
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170801'
  GROUP BY channel
),

site_avg AS (
  SELECT
    ROUND(SUM(totals.transactionRevenue) / 1000000 / COUNT(*), 2)    AS avg_rps
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170801'
)

SELECT
  channel,
  sessions,
  conversion_rate_pct,
  revenue_usd,
  revenue_per_session,
  avg_order_value,
  bounce_rate_pct,
  CASE
    WHEN conversion_rate_pct >= 2
      AND revenue_per_session >= (SELECT avg_rps FROM site_avg)      THEN 'PROTECT'
    WHEN conversion_rate_pct >= 1
      AND revenue_per_session >= (SELECT avg_rps FROM site_avg)      THEN 'GROW'
    WHEN sessions >= 50000
      AND conversion_rate_pct >= 0.5                                 THEN 'INVESTIGATE'
    ELSE 'CUT OR OPTIMISE'
  END                                                                  AS priority
FROM channel_metrics
ORDER BY
  CASE
    WHEN conversion_rate_pct >= 2 AND revenue_per_session >= (SELECT avg_rps FROM site_avg) THEN 1
    WHEN conversion_rate_pct >= 1 AND revenue_per_session >= (SELECT avg_rps FROM site_avg) THEN 2
    WHEN sessions >= 50000 AND conversion_rate_pct >= 0.5 THEN 3
    ELSE 4
  END,
  revenue_usd DESC;
```
