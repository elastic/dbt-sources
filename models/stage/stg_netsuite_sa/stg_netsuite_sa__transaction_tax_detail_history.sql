
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_tax_detail_history') }}

),

renamed as (

    select
        tax_item_id,
        transaction_id,
        transaction_line_id,
        _fivetran_synced,
        account_id,
        amount,
        amount_foreign,
        amount_net,
        calculation_comment,
        tax_basis_amount,
        tax_rate,
        tax_type,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
