
with source as (

    select * from {{ source('raw_salesforce', 'session_hijacking_event_store') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_date,
        current_ip,
        current_platform,
        current_screen,
        current_user_agent,
        current_window,
        evaluation_time,
        event_date,
        event_identifier,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        login_key,
        policy_id,
        policy_outcome,
        previous_ip,
        previous_platform,
        previous_screen,
        previous_user_agent,
        previous_window,
        score,
        security_event_data,
        session_hijacking_event_number,
        session_key,
        source_ip,
        summary,
        system_modstamp,
        user_id,
        username

    from source

)

select * from renamed
