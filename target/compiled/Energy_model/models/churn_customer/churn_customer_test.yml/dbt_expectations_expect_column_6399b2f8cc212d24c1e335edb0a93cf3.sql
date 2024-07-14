

with all_values as (

    select
        salutation as value_field

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_customer_test`
    

),
set_values as (

    select
        cast('Mr' as string) as value_field
    union all
    select
        cast('Mrs' as string) as value_field
    union all
    select
        cast('Miss' as string) as value_field
    union all
    select
        cast('Ms' as string) as value_field
    union all
    select
        cast('Dr' as string) as value_field
    union all
    select
        cast('None' as string) as value_field
    union all
    select
        cast('None' as string) as value_field
    
    
),
validation_errors as (
    -- values from the model that are not in the set
    select
        v.value_field
    from
        all_values v
        left join
        set_values s on v.value_field = s.value_field
    where
        s.value_field is null

)

select *
from validation_errors

