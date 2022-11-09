
with source as (

    select * from {{ source('raw_netsuite_sa', 'approval_routing_payment_approver_map_history') }}

),

renamed as (

    select
        approval_routing_id,
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
