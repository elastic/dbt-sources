
with source as (

    select * from {{ source('raw_netsuite', 'coupon_codes') }}

),

renamed as (

    select
        code,
        coupon_code_id,
        date_sent,
        promotion_code_id,
        recipient_id

    from source

)

select * from renamed
