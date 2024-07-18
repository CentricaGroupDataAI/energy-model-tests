
    
    

with all_values as (

    select
        direction as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_interaction_test`
    group by direction

)

select *
from all_values
where value_field not in (
    'Inbound','Outbound','Web Chat'
)


