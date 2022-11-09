
with source as (

    select * from {{ source('raw_salesforce', 'pse_jira_work_log_c') }}

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
        pse_comment_c,
        pse_start_date_c,
        pse_time_spent_formatted_c,
        pse_time_spent_seconds_c,
        pse_timecard_c,
        system_modstamp,
        pse_task_time_c,
        pse_issue_key_c

    from source

)

select * from renamed
