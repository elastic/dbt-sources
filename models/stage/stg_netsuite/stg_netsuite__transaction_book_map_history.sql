
with source as (

    select * from {{ source('raw_netsuite', 'transaction_book_map_history') }}

),

renamed as (

    select
        accounting_book_id,
        date_revenue_committed,
        exchange_rate,
        is_vsoe_bundle,
        needs_revenue_commitment,
        revenue_commitment_status,
        revenue_status,
        transaction_id

    from source

)

select * from renamed
