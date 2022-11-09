
with source as (

    select * from {{ source('raw_netsuite', 'change_request_mandated_approvers_map') }}

),

renamed as (

    select
        change_request_id,
        employee_id

    from source

)

select * from renamed
