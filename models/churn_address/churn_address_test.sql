{{ config(
    materialized='table'
) }}

WITH address AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_address') }}
)
SELECT * 
FROM address;