
    
    

select
    charge_id as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
where charge_id is not null
group by charge_id
having count(*) > 1


