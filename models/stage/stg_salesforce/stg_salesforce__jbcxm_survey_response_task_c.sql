
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_response_task_c') }}

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
        jbcxm_relationship_c,
        jbcxm_survey_c,
        jbcxm_survey_participant_c,
        jbcxm_survey_question_c,
        jbcxm_task_id_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed