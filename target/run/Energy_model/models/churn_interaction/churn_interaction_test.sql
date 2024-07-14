
  
    
        create or replace table `hive_metastore`.`grp_dataeng_dbt`.`churn_interaction_test`
      
      using delta
      
      
      
      
      
      
      
      as
      

WITH interaction AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_interaction`
)
SELECT * 
FROM interaction;
  