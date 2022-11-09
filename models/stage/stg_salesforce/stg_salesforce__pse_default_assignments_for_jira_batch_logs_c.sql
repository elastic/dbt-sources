
with source as (

    select * from {{ source('raw_salesforce', 'pse_default_assignments_for_jira_batch_logs_c') }}

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
        pse_default_assignments_for_jira_batch_c,
        pse_default_assignments_jira_batch_log_id_c,
        pse_log_type_c,
        pse_message_c,
        system_modstamp

    from source

)

select * from renamed
