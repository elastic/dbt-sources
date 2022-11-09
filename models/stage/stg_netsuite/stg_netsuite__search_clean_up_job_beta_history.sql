
with source as (

    select * from {{ source('raw_netsuite', 'search_clean_up_job_beta_history') }}

),

renamed as (

    select
        admin_id,
        archive_date,
        autoarchive_status_update_don,
        cleanup_overview,
        date_created,
        first_notification_sent,
        is_inactive,
        job_type_id,
        last_modified_date,
        last_notification_sent,
        notes,
        notify_search_owners,
        notify_users,
        number_of_users_to_notify,
        parent_id,
        search_clean_up_job_beta_extid,
        search_clean_up_job_beta_id,
        search_clean_up_job_beta_name,
        search_clean_up_rule_id,
        status_id,
        status_report_json,
        notify_supervisor_for_inactiv

    from source

)

select * from renamed
