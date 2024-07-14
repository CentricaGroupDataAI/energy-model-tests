

WITH nps AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_nps`
)
SELECT * 
FROM nps;