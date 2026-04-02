## Query 4 — Device Breakdown

**Business question:** Are mobile users converting differently from desktop?  
**Purpose:** Splits each channel by device type to test whether mobile friction explains underperformance — or whether it is an audience intent problem no UX fix will solve. Key finding: Social fails on both desktop (0.06%) and mobile (0.02%), ruling out device friction as the cause.
```sql
SELECT
  channelGrouping                                                      AS channel,
  device.deviceCategory                                               AS device,
  COUNT(*)                                                             AS sessions,
  ROUND(COUNTIF(totals.transactions >= 1) / COUNT(*) * 100, 2)       AS conversion_rate_pct,
  ROUND(SUM(totals.transactionRevenue) / 1000000, 2)                  AS revenue_usd,
  ROUND(SUM(totals.transactionRevenue) / 1000000 / COUNT(*), 2)      AS revenue_per_session,
  ROUND(COUNTIF(totals.bounces = 1) / COUNT(*) * 100, 2)             AS bounce_rate_pct
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170801'
GROUP BY channel, device
ORDER BY channel, device;
```
