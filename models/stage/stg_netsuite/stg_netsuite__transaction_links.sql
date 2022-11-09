
with source as (

    select * from {{ source('raw_netsuite', 'transaction_links') }}

),

renamed as (

    select
        amount_foreign_linked,
        amount_linked,
        applied_date_posted,
        applied_transaction_id,
        applied_transaction_line_id,
        date_last_modified,
        discount,
        inventory_number,
        link_type,
        original_date_posted,
        original_transaction_id,
        original_transaction_line_id,
        quantity_linked

    from source

)

select * from renamed
