
    
    

select
    consumption_item_id as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_consumption_test`
where consumption_item_id is not null
group by consumption_item_id
having count(*) > 1


