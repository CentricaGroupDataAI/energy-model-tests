



with validation_errors as (

    select
        current_account_id,mpxn,recorded_date,
        count(*) as `n_records`
    from `hive_metastore`.`grp_dataeng_dbt`.`churn_consumption_test`
    where
        1=1
        and 
    not (
        current_account_id is null and 
        mpxn is null and 
        recorded_date is null
        
    )


    
    group by
        current_account_id,mpxn,recorded_date
    having count(*) > 1

)
select * from validation_errors
