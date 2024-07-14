
    
    

select
    address_id as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_address_test`
where address_id is not null
group by address_id
having count(*) > 1


