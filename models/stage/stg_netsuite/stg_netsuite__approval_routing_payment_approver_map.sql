
with source as (

    select * from {{ source('raw_netsuite', 'approval_routing_payment_approver_map') }}

),

renamed as (

    select
        approval_routing_id,
        employee_id

    from source

)

select * from renamed
