
with source as (

    select * from {{ source('raw_salesforce', 'flow_interview_log_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        flow_developer_name,
        flow_interview_guid,
        flow_label,
        flow_namespace,
        flow_version_number,
        id,
        interview_duration_in_minutes,
        interview_end_timestamp,
        interview_start_timestamp,
        interview_status,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
