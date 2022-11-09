
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'invoice_tax_rate') }}

),

renamed as (

    select
        invoice_id,
        tax_rate_id,
        _fivetran_synced

    from source

)

select * from renamed
