{{ config(materialized='incremental', unique_key=['store_id','dept_id']) }}

SELECT DISTINCT
    d.store_id,
    d.dept_id,
    s.store_type,
    s.store_size,
    CURRENT_TIMESTAMP AS insert_date,
    CURRENT_TIMESTAMP AS update_date
FROM {{ ref('stg_department') }} d
JOIN {{ ref('stg_stores') }} s
  ON d.store_id = s.store_id
