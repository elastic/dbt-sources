
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'invoice') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount_due,
        amount_paid,
        amount_remaining,
        application_fee_amount,
        attempt_count,
        attempted,
        auto_advance,
        billing,
        billing_reason,
        charge_id,
        created,
        currency,
        customer_id,
        date,
        default_payment_method_id,
        default_source_id,
        description,
        due_date,
        ending_balance,
        finalized_at,
        footer,
        hosted_invoice_url,
        invoice_pdf,
        is_deleted,
        livemode,
        metadata,
        next_payment_attempt,
        number,
        paid,
        payment_intent_id,
        period_end,
        period_start,
        post_payment_credit_notes_amount,
        pre_payment_credit_notes_amount,
        receipt_number,
        starting_balance,
        statement_descriptor,
        status,
        status_transitions_finalized_at,
        status_transitions_marked_uncollectible_at,
        status_transitions_paid_at,
        status_transitions_voided_at,
        subscription_id,
        subscription_proration_date,
        subtotal,
        tax,
        tax_percent,
        threshold_reason_amount_gte,
        total,
        webhooks_delivered_at,
        collection_method

    from source

)

select * from renamed
