

with all_values as (

    select
        contact_reason_1 as value_field

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_complaint_test`
    

),
set_values as (

    select
        cast('Dispute Bill/balance' as string) as value_field
    union all
    select
        cast('Billing & Metering Issues' as string) as value_field
    union all
    select
        cast('Make A Payment' as string) as value_field
    union all
    select
        cast('Customer Service' as string) as value_field
    union all
    select
        cast('Query Bill/balance' as string) as value_field
    union all
    select
        cast('Government Scheme' as string) as value_field
    union all
    select
        cast('Direct Debit' as string) as value_field
    union all
    select
        cast('Migration Journey/comms' as string) as value_field
    union all
    select
        cast('Feed-in Tariffs' as string) as value_field
    union all
    select
        cast('Payment Issues' as string) as value_field
    union all
    select
        cast('Pricing' as string) as value_field
    union all
    select
        cast('Smart Metering Appointment' as string) as value_field
    union all
    select
        cast('Check Account Balance' as string) as value_field
    union all
    select
        cast('Switching Issues' as string) as value_field
    union all
    select
        cast('Faulty Meter' as string) as value_field
    union all
    select
        cast('Submit Read' as string) as value_field
    union all
    select
        cast('Request Copy Bill' as string) as value_field
    union all
    select
        cast('Smart Meter Not Sending Reads' as string) as value_field
    union all
    select
        cast('Meter Installation/exchange Or Meter Not Working' as string) as value_field
    union all
    select
        cast('Query Sale' as string) as value_field
    union all
    select
        cast('Faulty Meter Help' as string) as value_field
    union all
    select
        cast('Meter Engineer Related' as string) as value_field
    union all
    select
        cast('Reverse' as string) as value_field
    union all
    select
        cast('Update My Meter Details' as string) as value_field
    union all
    select
        cast('Move Out' as string) as value_field
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

