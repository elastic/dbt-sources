
with source as (

    select * from {{ source('raw_netsuite', 'billing_rate_cards') }}

),

renamed as (

    select
        billing_rate_card_extid,
        billing_rate_card_id,
        date_created,
        date_last_modified,
        is_inactive,
        name

    from source

)

select * from renamed
