
with source as (

    select * from {{ source('raw_salesforce', 'pse_task_time_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_friday_hours_c,
        pse_friday_notes_c,
        pse_monday_hours_c,
        pse_monday_notes_c,
        pse_project_task_assignment_c,
        pse_project_task_c,
        pse_saturday_hours_c,
        pse_saturday_notes_c,
        pse_start_date_c,
        pse_sunday_hours_c,
        pse_sunday_notes_c,
        pse_thursday_hours_c,
        pse_thursday_notes_c,
        pse_timecard_c,
        pse_total_hours_c,
        pse_tuesday_hours_c,
        pse_tuesday_notes_c,
        pse_wednesday_hours_c,
        pse_wednesday_notes_c,
        system_modstamp

    from source

)

select * from renamed
