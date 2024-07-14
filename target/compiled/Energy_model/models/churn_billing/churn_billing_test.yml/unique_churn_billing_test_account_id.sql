
    
    

select
    account_id as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
where account_id is not null
group by account_id
having count(*) > 1


