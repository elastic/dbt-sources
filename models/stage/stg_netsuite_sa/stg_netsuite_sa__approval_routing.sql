
with source as (

    select * from {{ source('raw_netsuite_sa', 'approval_routing') }}

),

renamed as (

    select
        approval_routing_id,
        _fivetran_deleted,
        _fivetran_synced,
        approval_routing_extid,
        bank_account_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        level_id,
        parent_id,
        payment_approval_limit

    from source

)

select * from renamed
