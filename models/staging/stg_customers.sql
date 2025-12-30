WITH source AS (
SELECT
customerNumber as customer_id,
customerName as customer_name,
contactLastName as contact_last_name,
contactFirstName as contact_first_name,
phone,
addressLine1 as address_line1,
addressLine2 as address_line2,
city,
state,
postalCode as postal_code,
country,
salesRepEmployeeNumber as sales_rep_employee_num,
creditLimit as credit_limit,
NOW() AS date_run
FROM {{source('dbt_project_2','customers')}}
)

SELECT 
*
FROM source