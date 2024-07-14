

WITH customer AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_customer`
)
SELECT * 
FROM customer;