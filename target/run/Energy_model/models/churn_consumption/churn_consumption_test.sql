
  
    
        create or replace table `hive_metastore`.`grp_dataeng_dbt`.`churn_consumption_test`
      
      using delta
      
      
      
      
      
      
      
      as
      

WITH consumption AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_consumption`
)
SELECT * 
FROM consumption;
  