
    
    

with all_values as (

    select
        actual_or_estimated as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_consumption_test`
    group by actual_or_estimated

)

select *
from all_values
where value_field not in (
    'A','E'
)


