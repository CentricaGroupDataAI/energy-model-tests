
  
    
        create or replace table `hive_metastore`.`grp_dataeng_dbt`.`churn_customer_test`
      
      using delta
      
      
      
      
      
      
      
      as
      

WITH customer AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_customer`
)
SELECT * 
FROM customer;
  