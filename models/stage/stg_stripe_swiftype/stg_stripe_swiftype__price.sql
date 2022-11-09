
with source as (

    select * from {{ source('raw_stripe_swiftype', 'price') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        billing_scheme,
        created,
        currency,
        is_deleted,
        livemode,
        lookup_key,
        nickname,
        product_id,
        recurring_aggregate_usage,
        recurring_interval,
        recurring_interval_count,
        recurring_usage_type,
        tiers_mode,
        transform_quantity_divide_by,
        transform_quantity_round,
        type,
        unit_amount,
        unit_amount_decimal,
        metadata,
        invoice_item_id

    from source

)

select * from renamed
