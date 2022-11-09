
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_links') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_synced,
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
        quantity_linked,
        link_type_code,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
