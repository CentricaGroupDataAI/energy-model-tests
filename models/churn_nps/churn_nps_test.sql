{{ config(
    materialized='table'
) }}

WITH nps AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_nps') }}
)
SELECT * 
FROM nps;