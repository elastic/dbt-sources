
with source as (

    select * from {{ source('raw_salesforce', 'apex_log') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        application,
        duration_milliseconds,
        last_modified_date,
        location,
        log_length,
        log_user_id,
        operation,
        request,
        start_time,
        status,
        system_modstamp,
        _fivetran_deleted,
        request_identifier

    from source

)

select * from renamed
