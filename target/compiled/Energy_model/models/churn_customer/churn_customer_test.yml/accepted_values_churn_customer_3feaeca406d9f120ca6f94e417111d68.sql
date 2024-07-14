
    
    

with all_values as (

    select
        gender as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_customer_test`
    group by gender

)

select *
from all_values
where value_field not in (
    'Male','Female','Unknown'
)


