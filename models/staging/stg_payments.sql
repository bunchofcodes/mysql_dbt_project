WITH source AS (
    SELECT 
    customerNumber as customer_id,
    checkNumber as check_id, 
    paymentDate as payment_date,
    amount as amount,
    now() as date_run
    FROM {{source('dbt_project_2','payments')}}
)

SELECT * FROM source