

WITH address AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_address`
)
SELECT * 
FROM address;