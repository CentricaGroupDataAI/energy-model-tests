



with validation_errors as (

    select
        interaction_id,customer_id,interaction_ts,
        count(*) as `n_records`
    from `hive_metastore`.`grp_dataeng_dbt`.`churn_interaction_test`
    where
        1=1
        and 
    not (
        interaction_id is null and 
        customer_id is null and 
        interaction_ts is null
        
    )


    
    group by
        interaction_id,customer_id,interaction_ts
    having count(*) > 1

)
select * from validation_errors
