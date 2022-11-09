
with source as (

    select * from {{ source('raw_netsuite_sa', 'currencyrates') }}

),

renamed as (

    select
        currencyrate_id,
        _fivetran_deleted,
        _fivetran_synced,
        anchor_currency_id,
        base_currency_id,
        currency_id,
        currencyrate_provider_id,
        date_deleted,
        date_effective,
        date_last_modified,
        entity_id,
        exchange_rate,
        is_anchor_only,
        update_method_id

    from source

)

select * from renamed
