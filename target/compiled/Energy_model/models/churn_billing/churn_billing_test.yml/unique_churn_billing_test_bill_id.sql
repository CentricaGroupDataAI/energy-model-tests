
    
    

select
    bill_id as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
where bill_id is not null
group by bill_id
having count(*) > 1


