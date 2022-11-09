
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_invoice_history') }}

),

renamed as (

    select
        user_id,
        invoice_id,
        total_amount_in_cents,
        invoice_date,
        cc_or_po,
        status,
        partition_date

    from source

)

select * from renamed
