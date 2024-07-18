




    with grouped_expression as (
    select
        
        
    
  


    

length(regexp_extract(interaction_id, '^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$', 0))


 > 0
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




