
with source as (

    select * from {{ source('raw_stripe_swiftype', 'setup_attempt') }}

),

renamed as (

    select
        id,
        setup_intent_id,
        _fivetran_synced,
        application,
        created,
        default_payment_method_id,
        livemode,
        on_behalf_of,
        setup_error,
        status,
        usage,
        setup_error_decline_code,
        setup_error_type,
        setup_error_message,
        setup_error_code,
        setup_error_doc_url

    from source

)

select * from renamed
