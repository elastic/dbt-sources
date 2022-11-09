
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_scenario_key_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_hash_c,
        crmfusion_dbr_101_hash_index_c,
        crmfusion_dbr_101_keys_c,
        crmfusion_dbr_101_scenario_id_c,
        crmfusion_dbr_101_version_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
