
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'subscription_item') }}

),

renamed as (

    select
        id,
        subscription_id,
        _fivetran_synced,
        billing_thresholds_amount_gte,
        billing_thresholds_reset_billing_cycle_anchor,
        created,
        metadata,
        plan_id,
        quantity

    from source

)

select * from renamed
