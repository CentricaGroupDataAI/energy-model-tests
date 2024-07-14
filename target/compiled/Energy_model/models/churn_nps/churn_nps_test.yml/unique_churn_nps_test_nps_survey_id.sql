
    
    

select
    nps_survey_id as unique_field,
    count(*) as n_records

from `hive_metastore`.`grp_dataeng_dbt`.`churn_nps_test`
where nps_survey_id is not null
group by nps_survey_id
having count(*) > 1


