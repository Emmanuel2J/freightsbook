create or replace PROCEDURE SEARCH_RATES(P_PK_ID IN NUMBER) AS
--This procedure is just to insert the search results
V_RATE_TYPE VARCHAR2(30);
V_RATES_CHECK NUMBER;
begin
    DELETE FROM RATE_SEARCH_RESULTS WHERE SEARCH_PK_ID = P_PK_ID; --Always refresh the rates for a given search pk_id
--Testing Comments
    INSERT INTO RATE_SEARCH_RESULTS(
    SEARCH_PK_ID,
    RATE_PK_ID
    ) 
    SELECT SEARCH_PK_ID,RATE_pk_id FROM V_MATCHING_RATES
    WHERE SEARCH_PK_ID = P_PK_ID
    and rate_pk_id in (select rate_pk_id from v_rate_mst where trunc(sysdate) between VALID_FROM AND VALID_TO);


    SELECT SEARCH_TYPE 
    INTO
    V_RATE_TYPE FROM RATE_SEARCH_LOG
    WHERE PK_ID = P_PK_ID;


END;
/