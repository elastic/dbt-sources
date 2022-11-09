
with source as (

    select * from {{ source('raw_netsuite', 'transaction_tax_detail_history') }}

),

renamed as (

    select
        account_id,
        amount,
        amount_foreign,
        amount_net,
        calculation_comment,
        tax_basis_amount,
        tax_item_id,
        tax_rate,
        tax_type,
        transaction_id,
        transaction_line_id

    from source

)

select * from renamed
