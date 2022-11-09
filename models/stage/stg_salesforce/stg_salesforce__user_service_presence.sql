
with source as (

    select * from {{ source('raw_salesforce', 'user_service_presence') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        at_capacity_duration,
        average_capacity,
        configured_capacity,
        created_by_id,
        created_date,
        currency_iso_code,
        idle_duration,
        is_away,
        is_current_state,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        service_presence_status_id,
        status_duration,
        status_end_date,
        status_start_date,
        system_modstamp,
        user_id

    from source

)

select * from renamed
