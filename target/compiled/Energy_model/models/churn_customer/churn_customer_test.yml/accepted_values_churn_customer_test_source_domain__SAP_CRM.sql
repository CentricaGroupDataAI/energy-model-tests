
    
    

with all_values as (

    select
        source_domain as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_customer_test`
    group by source_domain

)

select *
from all_values
where value_field not in (
    'SAP_CRM'
)


