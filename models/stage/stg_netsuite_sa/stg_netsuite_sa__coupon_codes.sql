
with source as (

    select * from {{ source('raw_netsuite_sa', 'coupon_codes') }}

),

renamed as (

    select
        coupon_code_id,
        _fivetran_deleted,
        _fivetran_synced,
        code,
        date_deleted,
        date_sent,
        promotion_code_id,
        recipient_id

    from source

)

select * from renamed