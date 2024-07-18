
    
    

with all_values as (

    select
        gas_bill_status as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
    group by gas_bill_status

)

select *
from all_values
where value_field not in (
    'Live','null'
)


