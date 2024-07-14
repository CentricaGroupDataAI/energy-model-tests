
  
    
        create or replace table `hive_metastore`.`grp_dataeng_dbt`.`churn_holding_test`
      
      using delta
      
      
      
      
      
      
      
      as
      

WITH holding AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_holding`
)
SELECT * 
FROM holding;
  