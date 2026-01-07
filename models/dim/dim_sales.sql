
SELECT 
null as sk_sales,
a.last_name as sales_last_name,
a.first_name as sales_first_name,
a.extension as sales_extension,
a.email as sales_email,
a.job_title as sales_job_title,
a.office_code as sales_office_code,
b.city as sales_office_city,
b.phone as sales_office_phone,
b.address_line1 as sales_office_address_line1,
b.address_line2 as sales_office_address_line2,
b.state as sales_office_state,
b.country as sales_office_country,
b.postal_code as sales_office_postal_code,
b.territory as sales_office_territory,
CURRENT_DATE() as start_date,
null as end_date

FROM {{ ref('stg_employees') }} a
LEFT JOIN {{ ref('stg_offices') }} b

ON a.office_code = b.office_id
WHERE a.job_title = 'Sales Rep'