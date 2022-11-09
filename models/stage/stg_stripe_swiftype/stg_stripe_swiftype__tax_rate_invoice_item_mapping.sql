
with source as (

    select * from {{ source('raw_stripe_swiftype', 'tax_rate_invoice_item_mapping') }}

),

renamed as (

    select
        invoice_item_id,
        tax_rate_id,
        _fivetran_synced

    from source

)

select * from renamed
