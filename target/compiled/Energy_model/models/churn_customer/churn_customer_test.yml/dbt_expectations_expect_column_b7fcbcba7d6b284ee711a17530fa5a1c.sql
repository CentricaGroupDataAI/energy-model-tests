





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and length(
        name
    ) >= 2 and length(
        name
    ) <= 200
)
 as expression


    from `hive_metastore`.`grp_dataeng_dbt`.`churn_customer_test`
    

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






