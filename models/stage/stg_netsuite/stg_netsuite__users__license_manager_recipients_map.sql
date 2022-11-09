
with source as (

    select * from {{ source('raw_netsuite', 'users__license_manager_recipients_map') }}

),

renamed as (

    select
        employee_id,
        users__license_manager_id

    from source

)

select * from renamed
