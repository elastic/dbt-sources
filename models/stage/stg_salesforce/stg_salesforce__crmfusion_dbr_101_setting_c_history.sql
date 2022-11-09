
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_setting_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_index_c,
        crmfusion_dbr_101_type_c,
        crmfusion_dbr_101_value_c,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
