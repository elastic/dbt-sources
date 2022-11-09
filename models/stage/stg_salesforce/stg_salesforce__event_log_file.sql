
with source as (

    select * from {{ source('raw_salesforce', 'event_log_file') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        api_version,
        created_by_id,
        created_date,
        event_type,
        interval,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        log_date,
        log_file_content_type,
        log_file_field_names,
        log_file_field_types,
        log_file_length,
        sequence,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
