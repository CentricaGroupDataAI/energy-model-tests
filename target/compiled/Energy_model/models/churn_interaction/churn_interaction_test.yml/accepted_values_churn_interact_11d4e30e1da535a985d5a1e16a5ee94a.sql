
    
    

with all_values as (

    select
        interaction_source as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_interaction_test`
    group by interaction_source

)

select *
from all_values
where value_field not in (
    'AWS_CONNECT'
)


