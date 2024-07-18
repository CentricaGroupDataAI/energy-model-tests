
    
    

with all_values as (

    select
        source as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_complaint_test`
    group by source

)

select *
from all_values
where value_field not in (
    'NEP','SAP_CRM'
)


