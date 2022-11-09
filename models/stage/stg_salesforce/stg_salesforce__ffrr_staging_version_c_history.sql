
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_staging_version_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_group_name_c,
        ffrr_grouping_batch_tracking_control_c,
        ffrr_index_c,
        ffrr_is_latest_c,
        ffrr_process_control_c,
        ffrr_recognition_date_c,
        ffrr_staging_batch_tracking_control_c,
        ffrr_status_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        ffrr_is_locked_c,
        ffrr_originating_process_c

    from source

)

select * from renamed
