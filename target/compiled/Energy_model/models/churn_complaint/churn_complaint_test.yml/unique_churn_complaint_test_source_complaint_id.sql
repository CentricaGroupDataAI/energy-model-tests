
    
    

select
    source_complaint_id as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_complaint_test`
where source_complaint_id is not null
group by source_complaint_id
having count(*) > 1


