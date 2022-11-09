
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_fcb_debug_entry_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_batch_class_c,
        fcrm_entry_10_c,
        fcrm_entry_1_c,
        fcrm_entry_2_c,
        fcrm_entry_3_c,
        fcrm_entry_4_c,
        fcrm_entry_5_c,
        fcrm_entry_6_c,
        fcrm_entry_7_c,
        fcrm_entry_8_c,
        fcrm_entry_9_c,
        fcrm_entry_end_time_c,
        fcrm_entry_start_time_c,
        fcrm_entry_type_c,
        fcrm_last_notification_time_c,
        fcrm_phase_c,
        fcrm_rebuild_start_time_c,
        fcrm_timestamp_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
