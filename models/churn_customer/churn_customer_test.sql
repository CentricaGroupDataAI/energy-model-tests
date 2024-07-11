{{ config(
    materialized='table'
) }}

WITH customer AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_customer') }}
)
SELECT * 
FROM customer;