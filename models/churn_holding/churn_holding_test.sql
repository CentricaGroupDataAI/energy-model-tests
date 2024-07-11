{{ config(
    materialized='table'
) }}

WITH holding AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_holding') }}
)
SELECT * 
FROM holding;