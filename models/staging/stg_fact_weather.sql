SELECT
    store,
    date        AS store_date,
    temperature,
    fuel_price,
    markdown1,
    markdown2,
    markdown3,
    markdown4,
    markdown5,
    cpi,
    unemployment,
    isholiday
FROM {{ source('raw','FACT_WEATHER') }}
