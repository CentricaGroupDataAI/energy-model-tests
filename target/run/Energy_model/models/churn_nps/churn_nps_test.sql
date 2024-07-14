
  
    
        create or replace table `hive_metastore`.`grp_dataeng_dbt`.`churn_nps_test`
      
      using delta
      
      
      
      
      
      
      
      as
      

WITH nps AS (
    SELECT * 
    FROM `hive_metastore`.`grp_dataeng_dev`.`churn_nps`
)
SELECT * 
FROM nps;
  