

WITH holding AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_holding`
)
SELECT * 
FROM holding;