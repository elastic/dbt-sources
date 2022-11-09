
with source as (

    select * from {{ source('raw_netsuite_sa', 'sub_tax_code_transaction_type_history') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        sub_tax_code_transaction_ty_ex,
        partition_date

    from source

)

select * from renamed
