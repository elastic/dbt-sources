
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_invoice_lines_history') }}

),

renamed as (

    select
        txid,
        user_id,
        product_id,
        identifier,
        adjustment_id,
        invoice_id,
        total_amount_in_cents,
        vat,
        quantity,
        nsid,
        partition_date

    from source

)

select * from renamed
