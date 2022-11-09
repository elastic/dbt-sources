
with source as (

    select * from {{ source('raw_salesforce', 'report_anomaly_event_store') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_date,
        evaluation_time,
        event_date,
        event_identifier,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        login_key,
        policy_id,
        policy_outcome,
        report,
        report_anomaly_event_number,
        score,
        security_event_data,
        session_key,
        source_ip,
        summary,
        system_modstamp,
        user_id,
        username

    from source

)

select * from renamed
