
with source as (

    select * from {{ source('raw_stripe_swiftype', 'credit_note_line_item') }}

),

renamed as (

    select
        credit_note_id,
        id,
        _fivetran_synced,
        amount,
        description,
        discount_amount,
        livemode,
        quantity,
        type,
        unit_amount,
        unit_amount_decimal,
        invoice_line_item

    from source

)

select * from renamed
