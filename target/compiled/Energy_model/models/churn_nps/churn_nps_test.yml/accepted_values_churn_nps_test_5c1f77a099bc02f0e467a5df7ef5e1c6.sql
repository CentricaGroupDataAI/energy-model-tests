
    
    

with all_values as (

    select
        survey_type as value_field,
        count(*) as n_records

    from `hive_metastore`.`grp_dataeng_dbt`.`churn_nps_test`
    group by survey_type

)

select *
from all_values
where value_field not in (
    'BGR - U&H - Meter Read','Rewards','BGR - U&H - Breakdown','BGR - U&H - ASV','BGR - Buy - ServiceContract','BGR - Begin - First Bill','BGR - Complaints (Services)','BGR - Complaints','BGR - Renew','BGR - U&H - Bill','BGR - Change - Energy Tariff','BGR - Move - Energy','BGR - Begin - SSD (Supply Start Date)','BGR - Leave (Services)','BGR - Change - Meter','BGR - U&H - Payments','BGR - Leave (Energy)'
)


