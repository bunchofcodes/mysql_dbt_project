WITH source_data AS (
    SELECT
        product_id as product_code,
        product_name,
        product_scale,
        product_vendor,
        product_description,
        product_line as product_category
    FROM {{ ref('stg_products') }}
)

select * from source_data