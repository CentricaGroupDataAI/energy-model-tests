



with validation_errors as (

    select
        customer_id,survey_ts,
        count(*) as `n_records`
    from `hive_metastore`.`grp_dataeng_dbt`.`churn_nps_test`
    where
        1=1
        and 
    not (
        customer_id is null and 
        survey_ts is null
        
    )


    
    group by
        customer_id,survey_ts
    having count(*) > 1

)
select * from validation_errors
