
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_minimum_purchase_history') }}

),

renamed as (

    select
        ap_minimum_purchase_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        ap_minimum_purchase_extid,
        currency_id,
        date_created,
        date_deleted,
        eligible_order_id,
        is_inactive,
        is_unit,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
