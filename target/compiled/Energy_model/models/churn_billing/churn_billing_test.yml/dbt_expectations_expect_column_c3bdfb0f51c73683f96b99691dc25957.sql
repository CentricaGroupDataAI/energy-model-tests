






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and elec_Units_consumption >= -1000 and elec_Units_consumption <= 10000
)
 as expression


    from `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
    

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







