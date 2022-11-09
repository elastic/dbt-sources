
with source as (

    select * from {{ source('raw_salesforce', 'vh_jira_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        vh_event_time_c,
        vh_event_type_c,
        vh_execution_log_c,
        vh_request_body_c,
        vh_request_url_c,
        vh_response_body_c

    from source

)

select * from renamed
