
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_invoice') }}

),

renamed as (

    select
        user_id,
        invoice_id,
        total_amount_in_cents,
        invoice_date,
        cc_or_po,
        status

    from source

)

select * from renamed
