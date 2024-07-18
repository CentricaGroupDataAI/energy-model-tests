
    
    

with all_values as (

    select
        interaction_type as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_interaction_test`
    group by interaction_type

)

select *
from all_values
where value_field not in (
    'Voice Call','Chat'
)


