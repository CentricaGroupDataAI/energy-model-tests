{{ config(
    materialized='table'
) }}

WITH agreements AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_agreements') }}
)
SELECT * 
FROM agreements;