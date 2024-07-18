
    
    

with all_values as (

    select
        unit_type_uid as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_consumption_test`
    group by unit_type_uid

)

select *
from all_values
where value_field not in (
    'KWH'
)


