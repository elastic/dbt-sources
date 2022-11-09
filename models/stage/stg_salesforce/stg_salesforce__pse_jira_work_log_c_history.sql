
with source as (

    select * from {{ source('raw_salesforce', 'pse_jira_work_log_c_history') }}

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
        pse_issue_key_c,
        pse_task_time_c

    from source

)

select * from renamed
