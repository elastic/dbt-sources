
with source as (

    select * from {{ source('raw_netsuite_sa', 'sales_order_reject_reason') }}

),

renamed as (

    select
        sales_order_reject_reason_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        sales_order_reject_reason_exti,
        sales_order_reject_reason_name

    from source

)

select * from renamed
