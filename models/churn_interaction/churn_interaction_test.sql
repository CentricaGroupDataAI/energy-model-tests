{{ config(
    materialized='table'
) }}

WITH interaction AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_interaction') }}
)
SELECT * 
FROM interaction;