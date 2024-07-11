{{ config(
    materialized='table'
) }}

WITH consumption AS (
    SELECT * 
    FROM {{ source('grp_dataeng_dev', 'churn_consumption') }}
)
SELECT * 
FROM consumption;