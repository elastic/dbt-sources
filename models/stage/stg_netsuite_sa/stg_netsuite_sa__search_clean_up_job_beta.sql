
with source as (

    select * from {{ source('raw_netsuite_sa', 'search_clean_up_job_beta') }}

),

renamed as (

    select
        search_clean_up_job_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        admin_id,
        archive_date,
        autoarchive_status_update_don,
        cleanup_overview,
        date_created,
        date_deleted,
        first_notification_sent,
        is_inactive,
        job_type_id,
        last_modified_date,
        last_notification_sent,
        notes,
        notify_search_owners,
        notify_supervisor_for_inactiv,
        notify_users,
        number_of_users_to_notify,
        parent_id,
        search_clean_up_job_beta_extid,
        search_clean_up_job_beta_name,
        search_clean_up_rule_id,
        status_id,
        status_report_json

    from source

)

select * from renamed
