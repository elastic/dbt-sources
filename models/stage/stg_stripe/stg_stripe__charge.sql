
with source as (

    select * from {{ source('raw_stripe', 'charge') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        amount_refunded,
        application,
        application_fee_amount,
        balance_transaction_id,
        bank_account_id,
        captured,
        card_id,
        connected_account_id,
        created,
        currency,
        customer_id,
        description,
        destination,
        failure_code,
        failure_message,
        fraud_details_stripe_report,
        fraud_details_user_report,
        invoice_id,
        livemode,
        on_behalf_of,
        outcome_network_status,
        outcome_reason,
        outcome_risk_level,
        outcome_risk_score,
        outcome_seller_message,
        outcome_type,
        paid,
        payment_intent_id,
        receipt_email,
        receipt_number,
        receipt_url,
        refunded,
        rule_action,
        rule_id,
        rule_predicate,
        rule_rule,
        shipping_address_city,
        shipping_address_country,
        shipping_address_line_1,
        shipping_address_line_2,
        shipping_address_postal_code,
        shipping_address_state,
        shipping_carrier,
        shipping_name,
        shipping_phone,
        shipping_tracking_number,
        source_id,
        source_transfer,
        statement_descriptor,
        status,
        transfer_data_destination,
        transfer_group,
        transfer_id

    from source

)

select * from renamed