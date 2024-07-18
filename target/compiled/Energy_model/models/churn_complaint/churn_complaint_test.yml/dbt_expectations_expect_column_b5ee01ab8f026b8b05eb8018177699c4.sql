

with all_values as (

    select
        contact_reason_2 as value_field

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_complaint_test`
    

),
set_values as (

    select
        cast('In Cycle Bill' as string) as value_field
    union all
    select
        cast('Final Bill' as string) as value_field
    union all
    select
        cast('Unrelated With Meter Type' as string) as value_field
    union all
    select
        cast('Book Smart Meter Upgrade' as string) as value_field
    union all
    select
        cast('Reschedule Smart Meter Upgrade' as string) as value_field
    union all
    select
        cast('Supply On' as string) as value_field
    union all
    select
        cast('Classic Credit Meter' as string) as value_field
    union all
    select
        cast('Over Payment' as string) as value_field
    union all
    select
        cast('Meter Display Screen Blank' as string) as value_field
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

