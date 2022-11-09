
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'plan') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        aggregate_usage,
        amount,
        billing_scheme,
        created,
        currency,
        interval,
        interval_count,
        is_deleted,
        livemode,
        metadata,
        nickname,
        product_id,
        tiers_mode,
        transform_usage_divide_by,
        transform_usage_round,
        trial_period_days,
        usage_type

    from source

)

select * from renamed
