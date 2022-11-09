
with source as (

    select * from {{ source('raw_recurly', 'transaction') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        amount,
        avs_check,
        billing_city,
        billing_country,
        billing_first_name,
        billing_last_name,
        billing_phone,
        billing_postal_code,
        billing_region,
        billing_street_1,
        billing_street_2,
        collected_at,
        collection_method,
        created_at,
        currency,
        customer_message,
        customer_message_locale,
        cvv_check,
        gateway_approval_code,
        gateway_message,
        gateway_reference,
        gateway_response_code,
        gateway_response_time,
        gateway_response_values,
        invoice_id,
        ip_address_country,
        ip_address_v_4,
        origin,
        original_transaction_id,
        payment_gateway_id,
        payment_gateway_name,
        payment_gateway_type,
        payment_method_card_type,
        payment_method_exp_month,
        payment_method_exp_year,
        payment_method_first_six,
        payment_method_last_four,
        payment_method_object,
        refunded,
        status,
        status_code,
        status_message,
        success,
        type,
        uuid,
        voided_at,
        voided_by_invoice_id

    from source

)

select * from renamed
