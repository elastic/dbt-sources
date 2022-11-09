
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'subscription_schedule') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        canceled_at,
        completed_at,
        created,
        current_phase_end_date,
        current_phase_start_date,
        customer_id,
        default_settings_billing_thresholds_amount_gte,
        default_settings_billing_thresholds_reset_billing_cycle_anchor,
        default_settings_collection_method,
        default_settings_default_payment_method,
        default_settings_invoice_settings_days_until_due,
        end_behavior,
        livemode,
        metadata,
        released_at,
        released_subscription,
        status,
        subscription_id

    from source

)

select * from renamed
