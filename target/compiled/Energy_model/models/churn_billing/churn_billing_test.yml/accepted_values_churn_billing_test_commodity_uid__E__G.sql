
    
    

with all_values as (

    select
        commodity_uid as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
    group by commodity_uid

)

select *
from all_values
where value_field not in (
    'E','G'
)


