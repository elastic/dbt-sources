
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_book_map_history') }}

),

renamed as (

    select
        accounting_book_id,
        transaction_id,
        _fivetran_synced,
        date_revenue_committed,
        exchange_rate,
        is_vsoe_bundle,
        needs_revenue_commitment,
        revenue_commitment_status,
        revenue_status,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
