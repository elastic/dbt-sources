
with source as (

    select * from {{ source('raw_netsuite', 'customization_employees_using_customization_map') }}

),

renamed as (

    select
        customization_id,
        employee_id

    from source

)

select * from renamed
