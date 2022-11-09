
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'source') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        code_verificationattempts_remaining,
        code_verificationstatus,
        connected_account_id,
        created,
        currency,
        customer_id,
        flow,
        livemode,
        metadata,
        owner_address_city,
        owner_address_country,
        owner_address_line_1,
        owner_address_line_2,
        owner_address_postal_code,
        owner_address_state,
        owner_email,
        owner_name,
        owner_phone,
        owner_verified_address_city,
        owner_verified_address_country,
        owner_verified_address_line_1,
        owner_verified_address_line_2,
        owner_verified_address_postal_code,
        owner_verified_address_state,
        owner_verified_email,
        owner_verified_name,
        owner_verified_phone,
        receiver_address,
        receiver_amount_charged,
        receiver_amount_received,
        receiver_amount_returned,
        redirect_failure_reason,
        redirect_return_url,
        redirect_status,
        redirect_url,
        statement_descriptor,
        status,
        type,
        usage

    from source

)

select * from renamed
