
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_user_answer_c_history') }}

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
        jbcxm_answer_c,
        jbcxm_answer_text_c,
        jbcxm_participant_c,
        jbcxm_question_c,
        jbcxm_rank_c,
        jbcxm_rank_text_c,
        jbcxm_submission_time_c,
        jbcxm_survey_master_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
