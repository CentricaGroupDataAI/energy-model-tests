
    
    

with all_values as (

    select
        property_type as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_address_test`
    group by property_type

)

select *
from all_values
where value_field not in (
    'Semi-Detached','Detached','Terraced','Flat/Maisonette'
)


