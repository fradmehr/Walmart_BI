SELECT
    store       AS store_id,
    dept        AS dept_id,
    date        AS store_date,
    weekly_sales,
    isholiday
FROM {{ source('raw','DEPARTMENT') }}
