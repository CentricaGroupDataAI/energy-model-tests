{{ config(
    materialized='table'
) }}

WITH complaint AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_complaint') }}
)
SELECT * 
FROM complaint;