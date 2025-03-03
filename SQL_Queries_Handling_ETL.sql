--This Query Added as Post SQL Query on each ETL One To One Mapping to handle daily snapshots of Staging

delete from [Table_Name] where snapshot_date not in (
SELECT snapshot_date
FROM (
    SELECT distinct snapshot_date
    FROM [Table_Name]
    ORDER BY snapshot_date DESC
) WHERE ROWNUM <= 7);

-- This Query added as post SQL Query on Target of DWH Fact TABLE to handle daily Snapshots of Data 

delete from [Fact_Table] 
where SNAPSHOT_DATE = SYSDATE - INTERVAL '1' DAY;