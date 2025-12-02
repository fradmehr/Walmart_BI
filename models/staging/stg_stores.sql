SELECT
    store       AS store_id,
    type        AS store_type,
    size        AS store_size
FROM {{ source('raw','STORES') }}
