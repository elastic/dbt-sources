
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_rate_cards_prices_history') }}

),

renamed as (

    select
        billing_class_id,
        billing_rate_card_id,
        currency_id,
        version_0,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        sale_unit_id,
        service_item_id,
        unit_price,
        units_type_id,
        partition_date

    from source

)

select * from renamed
