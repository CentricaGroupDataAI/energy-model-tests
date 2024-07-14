






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and death_dt >= '1900-01-01' and death_dt <= timestampdiff(, date_trunc('', ), date_trunc('', ))
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







