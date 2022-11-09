
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'au_becs_debit') }}

),

renamed as (

    select
        payment_method_id,
        _fivetran_synced,
        bsb_number,
        fingerprint,
        last_4

    from source

)

select * from renamed