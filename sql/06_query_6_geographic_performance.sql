## Query 6 — Geographic Performance

**Business question:** Which countries drive revenue and where is the expansion opportunity?  
**Purpose:** Country-level breakdown of sessions, CR%, revenue, RPS, AOV, and bounce rate. Surfaces the US revenue concentration risk (94.3% of all revenue), the Canada localisation opportunity ($164.95 AOV converting at just 0.77%), and the UK structural barrier (37,393 sessions at 0.05% CR). Countries with fewer than 500 sessions excluded.
```sql
SELECT
  geoNetwork.country                                                   AS country,
  COUNT(*)                                                             AS sessions,
  ROUND(COUNTIF(totals.transactions >= 1) / COUNT(*) * 100, 2)       AS conversion_rate_pct,
  ROUND(SUM(totals.transactionRevenue) / 1000000, 2)                  AS revenue_usd,
  ROUND(SUM(totals.transactionRevenue) / 1000000 / COUNT(*), 2)      AS revenue_per_session,
  ROUND(
    SUM(totals.transactionRevenue) / 1000000
    / NULLIF(SUM(totals.transactions), 0), 2
  )                                                                    AS avg_order_value,
  ROUND(COUNTIF(totals.bounces = 1) / COUNT(*) * 100, 2)             AS bounce_rate_pct
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170801'
GROUP BY country
HAVING sessions >= 500
ORDER BY revenue_usd DESC
LIMIT 20;
```
