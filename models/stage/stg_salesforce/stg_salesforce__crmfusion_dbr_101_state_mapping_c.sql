
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_state_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_state_code_c,
        crmfusion_dbr_101_state_value_c,
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
