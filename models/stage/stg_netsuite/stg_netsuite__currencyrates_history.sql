
with source as (

    select * from {{ source('raw_netsuite', 'currencyrates_history') }}

),

renamed as (

    select
        anchor_currency_id,
        base_currency_id,
        currencyrate_id,
        currencyrate_provider_id,
        currency_id,
        date_effective,
        date_last_modified,
        exchange_rate,
        is_anchor_only,
        update_method_id,
        entity_id

    from source

)

select * from renamed
