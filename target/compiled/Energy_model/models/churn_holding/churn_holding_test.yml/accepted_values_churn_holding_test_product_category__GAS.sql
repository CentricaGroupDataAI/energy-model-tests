
    
    

with all_values as (

    select
        product_category as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_holding_test`
    group by product_category

)

select *
from all_values
where value_field not in (
    'GAS'
)


