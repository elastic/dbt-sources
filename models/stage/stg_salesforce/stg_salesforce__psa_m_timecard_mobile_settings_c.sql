
with source as (

    select * from {{ source('raw_salesforce', 'psa_m_timecard_mobile_settings_c') }}

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
        psa_m_assignment_fields_c,
        psa_m_assignment_search_fields_c,
        psa_m_friday_fields_c,
        psa_m_monday_fields_c,
        psa_m_project_fields_c,
        psa_m_project_search_fields_c,
        psa_m_project_task_fields_c,
        psa_m_saturday_fields_c,
        psa_m_show_submit_single_timecard_button_c,
        psa_m_sunday_fields_c,
        psa_m_task_time_fields_c,
        psa_m_thursday_fields_c,
        psa_m_tuesday_fields_c,
        psa_m_wednesday_fields_c,
        psa_m_weekly_fields_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
