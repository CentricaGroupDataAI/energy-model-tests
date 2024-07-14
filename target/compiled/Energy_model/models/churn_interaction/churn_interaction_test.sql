

WITH interaction AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_interaction`
)
SELECT * 
FROM interaction;