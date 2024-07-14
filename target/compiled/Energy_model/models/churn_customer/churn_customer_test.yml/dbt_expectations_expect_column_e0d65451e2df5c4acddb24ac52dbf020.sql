




    with grouped_expression as (
    select
        
        
    
  


    

length(regexp_extract(customer_id, '^[0-9]+$', 0))


 > 0
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




