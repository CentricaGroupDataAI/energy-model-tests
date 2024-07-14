

WITH consumption AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_consumption`
)
SELECT * 
FROM consumption;