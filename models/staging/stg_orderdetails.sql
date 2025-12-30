WITH source AS (

    SELECT 
    orderNumber as order_id, 
    productCode as product_id,
    quantityOrdered as quantity_ordered,
    priceEach as price_item,
    orderLineNumber as order_line_number,
    NOW() AS date_run
    FROM {{source('dbt_project_2','orderdetails')}}

)

SELECT * FROM source