
with source as (

    select * from {{ source('raw_stripe', 'card') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        address_city,
        address_country,
        address_line_1,
        address_line_1_check,
        address_line_2,
        address_state,
        address_zip,
        address_zip_check,
        brand,
        connected_account_id,
        country,
        created,
        currency,
        customer_id,
        cvc_check,
        dynamic_last_4,
        exp_month,
        exp_year,
        fingerprint,
        funding,
        is_deleted,
        last_4,
        name,
        network,
        recipient,
        tokenization_method

    from source

)

select * from renamed
