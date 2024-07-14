
  
    
        create or replace table `hive_metastore`.`grp_dataeng_dbt`.`churn_complaint_test`
      
      using delta
      
      
      
      
      
      
      
      as
      

WITH complaint AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_complaint`
)
SELECT * 
FROM complaint;
  