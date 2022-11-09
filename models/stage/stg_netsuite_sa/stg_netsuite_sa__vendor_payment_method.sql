
with source as (

    select * from {{ source('raw_netsuite_sa', 'vendor_payment_method') }}

),

renamed as (

    select
        vendor_payment_method_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        vendor_payment_method_extid,
        vendor_payment_method_name

    from source

)

select * from renamed