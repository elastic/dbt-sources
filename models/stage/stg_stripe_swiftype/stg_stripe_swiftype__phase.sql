
with source as (

    select * from {{ source('raw_stripe_swiftype', 'phase') }}

),

renamed as (

    select
        end_date,
        start_date,
        subscription_schedule_id,
        _fivetran_synced,
        application_fee_percent,
        billing_thresholds_amount_gte,
        billing_thresholds_reset_billing_cycle_anchor,
        collection_method,
        coupon_id,
        default_payment_method,
        invoice_settings_days_until_due,
        tax_percent,
        trial_end

    from source

)

select * from renamed
