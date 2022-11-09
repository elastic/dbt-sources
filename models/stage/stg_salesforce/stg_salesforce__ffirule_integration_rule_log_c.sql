
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_apex_job_id_c,
        ffirule_errors_c,
        ffirule_integration_rule_button_c,
        ffirule_integration_rule_c,
        ffirule_integration_rule_job_c,
        ffirule_integration_rule_job_none_scheduled_c,
        ffirule_lines_c,
        ffirule_summary_c,
        ffirule_user_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
