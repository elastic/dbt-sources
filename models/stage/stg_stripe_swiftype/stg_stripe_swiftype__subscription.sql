
with source as (

    select * from {{ source('raw_stripe_swiftype', 'subscription') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        application_fee_percent,
        billing,
        billing_cycle_anchor,
        billing_threshold_amount_gte,
        billing_threshold_reset_billing_cycle_anchor,
        cancel_at,
        cancel_at_period_end,
        canceled_at,
        created,
        current_period_end,
        current_period_start,
        customer_id,
        days_until_due,
        default_source_id,
        ended_at,
        livemode,
        quantity,
        start,
        start_date,
        status,
        tax_percent,
        trial_end,
        trial_start,
        metadata,
        default_payment_method_id,
        pending_setup_intent_id,
        latest_invoice_id,
        pause_collection_resumes_at,
        pause_collection_behavior,
        _fivetran_start,
        _fivetran_end,
        _fivetran_active,
        collection_method

    from source

)

select * from renamed
