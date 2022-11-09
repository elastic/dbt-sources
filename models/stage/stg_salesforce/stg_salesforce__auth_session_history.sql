
with source as (

    select * from {{ source('raw_salesforce', 'auth_session_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_date,
        is_current,
        last_modified_date,
        login_history_id,
        login_type,
        logout_url,
        num_seconds_valid,
        parent_id,
        session_security_level,
        session_type,
        source_ip,
        user_type,
        users_id,
        login_geo_id,
        _fivetran_deleted

    from source

)

select * from renamed
