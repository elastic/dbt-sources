
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'sepa_debit') }}

),

renamed as (

    select
        payment_method_id,
        _fivetran_synced,
        bank_code,
        branch_code,
        country,
        fingerprint,
        last_4

    from source

)

select * from renamed
