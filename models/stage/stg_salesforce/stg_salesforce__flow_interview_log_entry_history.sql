
with source as (

    select * from {{ source('raw_salesforce', 'flow_interview_log_entry_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        duration_since_start_in_minutes,
        element_api_name,
        element_duration_in_minutes,
        element_label,
        flow_interview_log_id,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        log_entry_timestamp,
        log_entry_type,
        name,
        system_modstamp

    from source

)

select * from renamed
