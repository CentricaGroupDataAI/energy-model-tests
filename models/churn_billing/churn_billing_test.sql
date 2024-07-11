{{ config(
    materialized='table'
) }}

WITH billing AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_billing') }}
)
SELECT * 
FROM billing;