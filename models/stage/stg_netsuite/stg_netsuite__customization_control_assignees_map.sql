
with source as (

    select * from {{ source('raw_netsuite', 'customization_control_assignees_map') }}

),

renamed as (

    select
        customization_id,
        employee_id

    from source

)

select * from renamed
