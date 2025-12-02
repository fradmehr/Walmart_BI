SELECT
    store_id,
    dept_id,
    weekly_sales,
    fuel_price,
    temperature,
    unemployment,
    cpi,
    markdown1,
    markdown2,
    markdown3,
    markdown4,
    markdown5,
    dbt_valid_from AS vrsn_start_date,
    dbt_valid_to   AS vrsn_end_date,
    CURRENT_TIMESTAMP AS insert_date,
    CURRENT_TIMESTAMP AS update_date
FROM {{ ref('walmart_fact_snapshot') }}
