
with source as (

    select * from {{ source('raw_stripe_swiftype', 'tax_rate_invoice_mapping') }}

),

renamed as (

    select
        invoice_id,
        tax_rate_id,
        _fivetran_synced

    from source

)

select * from renamed
