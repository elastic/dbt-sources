
with source as (

    select * from {{ source('raw_salesforce', 'credential_stuffing_event_store_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_deleted,
        _fivetran_synced,
        accept_language,
        created_date,
        credential_stuffing_event_number,
        evaluation_time,
        event_date,
        event_identifier,
        id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        login_key,
        login_type,
        login_url,
        policy_id,
        policy_outcome,
        score,
        session_key,
        source_ip,
        summary,
        system_modstamp,
        user_agent,
        user_id,
        username

    from source

)

select * from renamed
