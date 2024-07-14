
  
    
        create or replace table `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
      
      using delta
      
      
      
      
      
      
      
      as
      

WITH billing AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_billing`
)
SELECT * 
FROM billing;
  