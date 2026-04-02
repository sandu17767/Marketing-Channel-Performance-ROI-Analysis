## Query 3 — Monthly Trend Analysis

**Business question:** Are channels improving or declining over time?  
**Purpose:** Tracks sessions, CR%, and revenue per channel per month. Reveals structural decline (Organic Search conversion fell 54% while sessions grew 56%) and improving momentum (Paid Search CR peaked at 2.52% in July 2017). August 2017 excluded — only 1 day of data captured.
```sql
SELECT
  FORMAT_DATE('%Y-%m', PARSE_DATE('%Y%m%d', date))                   AS month,
  channelGrouping                                                      AS channel,
  COUNT(*)                                                             AS sessions,
  ROUND(COUNTIF(totals.transactions >= 1) / COUNT(*) * 100, 2)       AS conversion_rate_pct,
  ROUND(SUM(totals.transactionRevenue) / 1000000, 2)                  AS revenue_usd
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170731'
  AND channelGrouping IN (
    'Referral', 'Direct', 'Organic Search',
    'Paid Search', 'Social', 'Display', 'Affiliates'
  )
GROUP BY month, channel
ORDER BY month, channel;
```
