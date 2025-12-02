{% snapshot walmart_fact_snapshot %}

{{
  config(
    target_database='WALMART_BI',
    target_schema='SNAPSHOTS',
    unique_key='store_id || dept_id || store_date',
    strategy='check',
    check_cols=[
      'weekly_sales',
      'temperature',
      'fuel_price',
      'unemployment',
      'cpi',
      'markdown1',
      'markdown2',
      'markdown3',
      'markdown4',
      'markdown5'
    ]
  )
}}

SELECT
    d.store_id,
    d.dept_id,
    d.store_date,
    d.weekly_sales,
    f.temperature,
    f.fuel_price,
    f.unemployment,
    f.cpi,
    f.markdown1,
    f.markdown2,
    f.markdown3,
    f.markdown4,
    f.markdown5
FROM {{ ref('stg_department') }} d
JOIN {{ ref('stg_fact_weather') }} f
  ON d.store_id = f.store
 AND d.store_date = f.store_date

{% endsnapshot %}
