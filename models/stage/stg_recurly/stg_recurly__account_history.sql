
with source as (

    select * from {{ source('raw_recurly', 'account_history') }}

),

renamed as (

    select
        id,
        updated_at,
        _fivetran_synced,
        account_city,
        account_country,
        account_first_name,
        account_last_name,
        account_phone,
        account_postal_code,
        account_region,
        account_street_1,
        account_street_2,
        bill_to,
        cc_emails,
        code,
        company,
        created_at,
        deleted_at,
        email,
        exemption_certificate,
        first_name,
        hosted_login_token,
        last_name,
        preferred_locale,
        state,
        tax_exempt,
        username,
        vat_number

    from source

)

select * from renamed
