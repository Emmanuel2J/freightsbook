
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_MOST_SEARCHED_ROUTES" ("ORIGIN_PORT_ID", "ORIGIN_PORT_NAME", "DESTINATION_PORT_ID", "DESTINATION_PORT_NAME", "SEARCH_COUNT", "ROUTE_LABEL") AS 
  SELECT
    s.origin_port_id,
    pfrom.port_name AS origin_port_name,
    s.destination_port_id,
    pto.port_name AS destination_port_name,
    COUNT(*) AS search_count,
    NVL(pfrom.port_name || '(' || pfrom.port_code  || ')', 
    TO_CHAR(s.origin_port_id)) || ' -> ' ||
    NVL(pto.port_name || '(' || pto.port_code  || ')', 
    TO_CHAR(s.destination_port_id)) AS route_label
FROM rate_search_log s
LEFT JOIN port_det pfrom
  ON s.origin_port_id = pfrom.pk_id
LEFT JOIN port_det pto
  ON s.destination_port_id = pto.pk_id
GROUP BY
    s.origin_port_id,
    pfrom.port_name,
    pfrom.port_code,
    s.destination_port_id,
    pto.port_name,
    pto.port_code
ORDER BY search_count DESC;