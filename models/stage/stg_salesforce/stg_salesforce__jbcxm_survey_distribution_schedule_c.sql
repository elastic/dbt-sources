
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_distribution_schedule_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_date_c,
        jbcxm_description_c,
        jbcxm_email_batch_size_c,
        jbcxm_email_fail_count_c,
        jbcxm_job_id_c,
        jbcxm_partcipant_count_c,
        jbcxm_processed_count_c,
        jbcxm_reschedule_c,
        jbcxm_schedule_frequency_c,
        jbcxm_send_address_c,
        jbcxm_start_date_c,
        jbcxm_status_c,
        jbcxm_survey_id_c,
        jbcxm_template_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
