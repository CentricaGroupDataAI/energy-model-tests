
    
    

select
    mpxn as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_holding_test`
where mpxn is not null
group by mpxn
having count(*) > 1


