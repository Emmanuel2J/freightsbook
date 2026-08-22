CREATE OR REPLACE FORCE EDITIONABLE VIEW "FBOOK"."V_ACTIVE_RATES" ("VENDOR_ID", "ACTIVE_NOW", "ACTIVE_30_DAYS_AGO", "TREND_PCT") AS 
  SELECT
  vendor_id,
  active_now,
  active_30_days_ago,
  CASE
    WHEN active_30_days_ago = 0 AND active_now > 0 THEN 100
    WHEN active_30_days_ago = 0 THEN 0
    ELSE ROUND(100 * (active_now - active_30_days_ago) / active_30_days_ago, 1)
  END AS trend_pct
FROM (
  SELECT
    vendor_id,
    SUM(CASE WHEN TRUNC(SYSDATE) BETWEEN valid_from AND valid_to THEN 1 ELSE 0 END) AS active_now,
    SUM(CASE WHEN TRUNC(SYSDATE) - 30 BETWEEN valid_from AND valid_to THEN 1 ELSE 0 END) AS active_30_days_ago
  FROM v_rate_mst
  GROUP BY vendor_id
);