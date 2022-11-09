
with source as (

    select * from {{ source('raw_salesforce', 'pse_team_schedule_slot_c') }}

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
        owner_id,
        pse_end_time_c,
        pse_hours_c,
        pse_resources_required_c,
        pse_start_time_c,
        pse_team_schedule_c,
        pse_team_schedule_slot_type_c,
        system_modstamp

    from source

)

select * from renamed
