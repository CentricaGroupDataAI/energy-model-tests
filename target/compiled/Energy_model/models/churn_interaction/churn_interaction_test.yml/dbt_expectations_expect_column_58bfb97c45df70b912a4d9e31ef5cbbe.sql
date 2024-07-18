






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and talk_time >= 0 and talk_time <= 7200
)
 as expression


    from `hive_metastore`.`grp_dataeng_dbt`.`churn_interaction_test`
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors







