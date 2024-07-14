





with validation_errors as (

    select
        name, email, phone
    from `hive_metastore`.`grp_dataeng_dbt`.`churn_customer_test`
    group by name, email, phone
    having count(*) > 1

)

select *
from validation_errors


