

WITH billing AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_billing`
)
SELECT * 
FROM billing;