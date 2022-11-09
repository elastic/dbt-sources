
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_account_name_filter_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_index_c,
        crmfusion_dbr_101_replace_value_c,
        crmfusion_dbr_101_target_value_c,
        crmfusion_dbr_101_type_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
