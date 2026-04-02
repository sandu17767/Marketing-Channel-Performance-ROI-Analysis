## Query 2 — Channel Performance Overview

**Business question:** Which channels convert and generate revenue?  
**Purpose:** Full side-by-side comparison of all 7 channels — sessions, conversion rate, revenue, Revenue Per Session (RPS), AOV, and bounce rate. The foundation query the entire project builds from.
```sql
SELECT
  channelGrouping                                                      AS channel,
  COUNT(*)                                                             AS sessions,
  ROUND(COUNT(*) / SUM(COUNT(*)) OVER() * 100, 1)                    AS sessions_pct,
  ROUND(COUNTIF(totals.transactions >= 1) / COUNT(*) * 100, 2)       AS conversion_rate_pct,
  ROUND(SUM(totals.transactionRevenue) / 1000000, 2)                  AS revenue_usd,
  ROUND(
    SUM(totals.transactionRevenue) / 1000000
    / SUM(SUM(totals.transactionRevenue) / 1000000) OVER() * 100, 1
  )                                                                    AS revenue_pct,
  ROUND(SUM(totals.transactionRevenue) / 1000000 / COUNT(*), 2)      AS revenue_per_session,
  ROUND(
    SUM(totals.transactionRevenue) / 1000000
    / NULLIF(SUM(totals.transactions), 0), 2
  )                                                                    AS avg_order_value,
  ROUND(COUNTIF(totals.bounces = 1) / COUNT(*) * 100, 2)             AS bounce_rate_pct
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170801'
GROUP BY channel
ORDER BY revenue_usd DESC;
```
