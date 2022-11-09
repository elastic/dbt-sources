
with source as (

    select * from {{ source('raw_netsuite_sa', 'deleted_contract_audit') }}

),

renamed as (

    select
        deleted_contract_audit_id,
        _fivetran_deleted,
        _fivetran_synced,
        bill_to_customer_id,
        contract_end_date,
        contract_renewed_on,
        contract_start_date,
        date_created,
        date_deleted,
        deleted_contract_audit_extid,
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
