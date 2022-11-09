
with source as (

    select * from {{ source('raw_netsuite', 'approval_routing') }}

),

renamed as (

    select
        approval_routing_extid,
        approval_routing_id,
        bank_account_id,
        date_created,
        is_inactive,
        last_modified_date,
        level_id,
        parent_id,
        payment_approval_limit

    from source

)

select * from renamed
