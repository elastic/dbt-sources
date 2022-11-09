
with source as (

    select * from {{ source('raw_netsuite_sa', 'deleted_contract_item_audit_history') }}

),

renamed as (

    select
        deleted_contract_item_audit_id,
        _fivetran_deleted,
        _fivetran_synced,
        bill_to_customer_id,
        contract_item_end_date,
        contract_item_id,
        contract_item_start_date,
        contract_name,
        current_list_rate,
        date_created,
        date_deleted,
        deleted_contract_item_audit_ex,
        is_inactive,
        item,
        last_modified_date,
        original_discount,
        original_list_rate,
        parent_id,
        quantity,
        renewals_exclusion,
        term,
        partition_date

    from source

)

select * from renamed
