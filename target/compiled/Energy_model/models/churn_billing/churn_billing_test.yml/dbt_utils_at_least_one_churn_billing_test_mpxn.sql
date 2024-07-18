







select *
from (
    with pruned_rows as (
      select
        mpxn
      from `hive_metastore`.`grp_dataeng_dbt`.`churn_billing_test`
      where mpxn is not null
      limit 1
    )
    select
        
        
      
      count(mpxn) as filler_column

    from pruned_rows

    

    having count(mpxn) = 0

) validation_errors

