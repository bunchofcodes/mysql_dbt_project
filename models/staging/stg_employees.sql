WITH source AS (
SELECT
employeeNumber as employee_id,
lastName as last_name,
firstName as first_name,
extension,
email,
officeCode as office_code,
reportsTo as report_to,
jobTitle as job_title,
NOW() AS date_run
FROM {{source('dbt_project_2','employees')}}
)
SELECT * FROM source

