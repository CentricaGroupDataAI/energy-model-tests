
    
    

with all_values as (

    select
        marketing_consent as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_customer_test`
    group by marketing_consent

)

select *
from all_values
where value_field not in (
    'Opt-In','Opt-Out','Cust N-A'
)


