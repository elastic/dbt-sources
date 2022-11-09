
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_erp_common_object_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_allow_billing_document_line_reparenting_c,
        fferpcore_disable_credit_terms_merge_validation_c,
        fferpcore_maintain_account_valid_address_status_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
