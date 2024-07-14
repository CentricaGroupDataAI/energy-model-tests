
  
    
        create or replace table `hive_metastore`.`grp_dataeng_dbt`.`churn_address_test`
      
      using delta
      
      
      
      
      
      
      
      as
      

WITH address AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_address`
)
SELECT * 
FROM address;
  