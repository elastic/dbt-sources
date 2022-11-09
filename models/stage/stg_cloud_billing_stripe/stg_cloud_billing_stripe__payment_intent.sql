
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'payment_intent') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        amount_capturable,
        amount_received,
        application,
        application_fee_amount,
        canceled_at,
        cancellation_reason,
        capture_method,
        confirmation_method,
        connected_account_id,
        created,
        currency,
        customer_id,
        description,
        last_payment_error_charge_id,
        last_payment_error_code,
        last_payment_error_decline_code,
        last_payment_error_doc_url,
        last_payment_error_message,
        last_payment_error_param,
        last_payment_error_source_id,
        last_payment_error_type,
        livemode,
        metadata,
        on_behalf_of,
        payment_method_id,
        payment_method_types,
        receipt_email,
        source_id,
        statement_descriptor,
        status,
        transfer_data_destination,
        transfer_group

    from source

)

select * from renamed
