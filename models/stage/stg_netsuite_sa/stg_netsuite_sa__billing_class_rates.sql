
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_class_rates') }}

),

renamed as (

    select
        billing_class_id,
        billing_rate_card_id,
        currency_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        unit_price

    from source

)

select * from renamed
