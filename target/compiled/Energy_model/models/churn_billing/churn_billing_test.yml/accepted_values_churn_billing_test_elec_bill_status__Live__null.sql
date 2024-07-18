
    
    

with all_values as (

    select
        elec_bill_status as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
    group by elec_bill_status

)

select *
from all_values
where value_field not in (
    'Live','null'
)


