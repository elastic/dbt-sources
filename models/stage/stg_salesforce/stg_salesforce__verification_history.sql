
with source as (

    select * from {{ source('raw_salesforce', 'verification_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity,
        created_by_id,
        created_date,
        event_group,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        login_history_id,
        policy,
        remarks,
        resource_id,
        source_ip,
        status,
        system_modstamp,
        user_id,
        verification_method,
        verification_time

    from source

)

select * from renamed
