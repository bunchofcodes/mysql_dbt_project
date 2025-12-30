WITH source as (
    SELECT
    officeCode as office_id,
    city,
    phone,
    addressLine1 as address_line1,
    addressLine2 as address_line2,
    state,
    country,
    postalCode as postal_code,
    territory,
    NOW() AS date_run
    FROM {{source('dbt_project_2','offices')}}
)
    
SELECT * FROM source
