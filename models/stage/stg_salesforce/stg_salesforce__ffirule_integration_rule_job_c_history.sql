
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_job_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_integration_rule_c,
        ffirule_list_view_name_c,
        ffirule_list_view_object_c,
        ffirule_list_view_source_idfield_c,
        ffirule_scheduled_apex_job_cron_expression_c,
        ffirule_scheduled_apex_job_id_c,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp

    from source

)

select * from renamed
