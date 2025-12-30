WITH source AS (
    SELECT

    orderNumber as order_id,
    orderDate as order_date,
    requiredDate as required_date,
    shippedDate as shipped_date,
    status,
    comments,
    customerNumber as customer_id,
    now() as date_run
    FROM {{source('dbt_project_2','orders')}}


)

SELECT * FROM source