
    
    

with all_values as (

    select
        complaint_type as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_complaint_test`
    group by complaint_type

)

select *
from all_values
where value_field not in (
    'General','Complaint','Services Complaint','Energy Ombudsman','Final Position','Executive Level'
)


