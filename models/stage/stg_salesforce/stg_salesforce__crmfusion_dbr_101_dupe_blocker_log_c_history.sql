
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_dupe_blocker_log_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_date_time_c,
        crmfusion_dbr_101_event_type_c,
        crmfusion_dbr_101_message_c,
        crmfusion_dbr_101_user_c,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
