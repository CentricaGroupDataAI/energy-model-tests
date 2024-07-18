






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and bill_amount >= -10000 and bill_amount <= 10000
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







