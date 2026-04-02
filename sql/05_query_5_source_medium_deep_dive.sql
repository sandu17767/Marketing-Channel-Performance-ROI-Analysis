## Query 5 — Source / Medium Deep Dive

**Business question:** Within channels, which specific sources perform best?  
**Purpose:** Goes one level below channel grouping to individual traffic sources. Uncovers the most important finding in the project: YouTube (94% of Social sessions) converts at 0.01% at $0.0015 RPS, while Facebook within the same channel converts at 1–3.8%. The Social channel average is a YouTube problem, not a Social problem. Sources with fewer than 500 sessions excluded to remove noise.
```sql
SELECT
  CONCAT(trafficSource.source, ' / ', trafficSource.medium)          AS source_medium,
  COUNT(*)                                                             AS sessions,
  ROUND(COUNTIF(totals.transactions >= 1) / COUNT(*) * 100, 2)       AS conversion_rate_pct,
  ROUND(SUM(totals.transactionRevenue) / 1000000, 2)                  AS revenue_usd,
  ROUND(SUM(totals.transactionRevenue) / 1000000 / COUNT(*), 4)      AS revenue_per_session,
  ROUND(
    SUM(totals.transactionRevenue) / 1000000
    / NULLIF(SUM(totals.transactions), 0), 2
  )                                                                    AS avg_order_value,
  ROUND(COUNTIF(totals.bounces = 1) / COUNT(*) * 100, 2)             AS bounce_rate_pct
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170801'
GROUP BY source_medium
HAVING sessions >= 500
ORDER BY revenue_usd DESC
LIMIT 20;
```
