
with source as (

    select * from {{ source('raw_salesforce', 'api_anomaly_event_store') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        api_anomaly_event_number,
        created_date,
        evaluation_time,
        event_date,
        event_identifier,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        login_key,
        operation,
        policy_id,
        policy_outcome,
        queried_entities,
        request_identifier,
        rows_processed,
        score,
        security_event_data,
        session_key,
        source_ip,
        summary,
        system_modstamp,
        uri,
        user_agent,
        user_id,
        username

    from source

)

select * from renamed
