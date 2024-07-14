

WITH complaint AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_complaint`
)
SELECT * 
FROM complaint;