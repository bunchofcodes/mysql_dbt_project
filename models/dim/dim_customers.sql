SELECT
    -- {{ dbt_utils.generate_surrogate_key(['customer_id']) }} AS sk_customer,
    customer_id AS customer_number,
    customer_name,
    contact_last_name AS customer_contact_last_name,
    contact_first_name AS customer_contact_first_name,
    phone AS customer_phone_number,
    address_line1 AS customer_address_line1,
    address_line2 AS customer_address_line2,
    city AS customer_city,
    state AS customer_state,
    postal_code AS customer_postalcode,
    country AS customer_country,
    sales_rep_employee_num AS customer_sales_representative,
    CURRENT_TIMESTAMP AS start_date,
    NULL AS end_date
FROM {{ source('dim_source', 'stg_customers') }}
