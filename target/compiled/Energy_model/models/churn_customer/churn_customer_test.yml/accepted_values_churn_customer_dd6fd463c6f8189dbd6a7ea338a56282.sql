
    
    

with all_values as (

    select
        salutation as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_customer_test`
    group by salutation

)

select *
from all_values
where value_field not in (
    'Mr','Mrs','Miss','Ms','Dr','None'
)


