
with source as (

    select * from {{ source('raw_stripe', 'dispute') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        balance_transaction,
        charge_id,
        created,
        currency,
        evidence_access_activity_log,
        evidence_billing_address,
        evidence_cancellation_policy,
        evidence_cancellation_policy_disclosure,
        evidence_cancellation_rebuttal,
        evidence_customer_communication,
        evidence_customer_email_address,
        evidence_customer_name,
        evidence_customer_purchase_ip,
        evidence_customer_signature,
        evidence_details_due_by,
        evidence_details_has_evidence,
        evidence_details_past_due,
        evidence_details_submission_count,
        evidence_duplicate_charge_documentation,
        evidence_duplicate_charge_explanation,
        evidence_duplicate_charge_id,
        evidence_product_description,
        evidence_receipt,
        evidence_refund_policy,
        evidence_refund_policy_disclosure,
        evidence_refund_refusal_explanation,
        evidence_service_date,
        evidence_service_documentation,
        evidence_shipping_address,
        evidence_shipping_carrier,
        evidence_shipping_date,
        evidence_shipping_documentation,
        evidence_shipping_tracking_number,
        evidence_uncategorized_file,
        evidence_uncategorized_text,
        is_charge_refundable,
        livemode,
        reason,
        status

    from source

)

select * from renamed
