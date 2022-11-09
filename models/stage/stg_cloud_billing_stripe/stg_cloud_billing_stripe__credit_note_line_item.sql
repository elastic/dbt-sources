
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'credit_note_line_item') }}

),

renamed as (

    select
        credit_note_id,
        id,
        _fivetran_synced,
        amount,
        description,
        discount_amount,
        invoice_line_item,
        livemode,
        quantity,
        type,
        unit_amount,
        unit_amount_decimal

    from source

)

select * from renamed
