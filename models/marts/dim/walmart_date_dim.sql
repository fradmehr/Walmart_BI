{{ config(materialized='incremental', unique_key=['store_id','dept_id']) }}

SELECT
    dept_id,
    store_id,
    store_date,
    isholiday,
    weekly_sales,
    CURRENT_TIMESTAMP AS insert_date,
    CURRENT_TIMESTAMP AS update_date
FROM {{ ref('stg_department') }}
