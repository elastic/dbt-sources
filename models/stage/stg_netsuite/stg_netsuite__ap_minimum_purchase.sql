
with source as (

    select * from {{ source('raw_netsuite', 'ap_minimum_purchase') }}

),

renamed as (

    select
        amount,
        ap_minimum_purchase_extid,
        ap_minimum_purchase_id,
        currency_id,
        date_created,
        eligible_order_id,
        is_inactive,
        is_unit,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
