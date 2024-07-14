
    
    

select
    interaction_id as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_interaction_test`
where interaction_id is not null
group by interaction_id
having count(*) > 1


