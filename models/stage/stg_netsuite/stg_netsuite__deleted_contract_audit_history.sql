
with source as (

    select * from {{ source('raw_netsuite', 'deleted_contract_audit_history') }}

),

renamed as (

    select
        bill_to_customer_id,
        contract_end_date,
        contract_renewed_on,
        contract_start_date,
        date_created,
        deleted_contract_audit_extid,
        deleted_contract_audit_id,
        deleted_contract_audit_name,
        distributor,
        end_user,
        is_inactive,
        last_modified_date,
        original_contract,
        parent_id,
        renewal_transaction,
        reseller

    from source

)

select * from renamed
