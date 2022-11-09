
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_csevent_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_c,
        jbcxm_assigned_c,
        jbcxm_completion_date_c,
        jbcxm_date_c,
        jbcxm_description_c,
        jbcxm_is_child_c,
        jbcxm_is_recurrence_c,
        jbcxm_priority_c,
        jbcxm_recurrence_day_of_month_c,
        jbcxm_recurrence_day_of_week_mask_c,
        jbcxm_recurrence_end_date_only_c,
        jbcxm_recurrence_event_id_c,
        jbcxm_recurrence_instance_c,
        jbcxm_recurrence_interval_c,
        jbcxm_recurrence_month_of_year_c,
        jbcxm_recurrence_start_date_only_c,
        jbcxm_recurrence_type_c,
        jbcxm_status_c,
        jbcxm_tasks_count_c,
        jbcxm_type_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
