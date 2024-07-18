
    
    

with all_values as (

    select
        meter_point_type as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_consumption_test`
    group by meter_point_type

)

select *
from all_values
where value_field not in (
    'G','E'
)


