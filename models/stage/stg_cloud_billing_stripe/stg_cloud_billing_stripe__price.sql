
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'price') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        billing_scheme,
        created,
        currency,
        invoice_item_id,
        is_deleted,
        livemode,
        lookup_key,
        metadata,
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
        unit_amount_decimal

    from source

)

select * from renamed
