WITH source AS (
    SELECT
    productLine AS product_line,
    textDescription as description_text,
    htmlDescription as description_html,
    'image',
    now() as date_run
    FROM {{source('dbt_project_2','productlines')}}
    )
SELEct * FROM source