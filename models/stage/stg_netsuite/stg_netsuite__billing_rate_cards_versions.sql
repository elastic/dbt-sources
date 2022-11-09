
with source as (

    select * from {{ source('raw_netsuite', 'billing_rate_cards_versions') }}

),

renamed as (

    select
        billing_rate_card_id,
        date_created,
        date_effective,
        date_last_modified,
        last_modified_by_id,
        version_0

    from source

)

select * from renamed
