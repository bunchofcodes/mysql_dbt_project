WITH source AS (
    SELECT
    productCode as product_id,
    productName as product_name,
    productLine as product_line,
    productScale as product_scale, 
    productVendor as product_vendor,
    productDescription as product_description,
    quantityInStock as stock_quantity,
    buyPrice as buy_price,
    MSRP as msrp
    FROM {{source('dbt_project_2','products')}}
)

SELECT * FROM source