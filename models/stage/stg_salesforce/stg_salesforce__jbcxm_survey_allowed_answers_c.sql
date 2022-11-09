
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_allowed_answers_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_allow_other_c,
        jbcxm_allow_other_label_c,
        jbcxm_allow_other_position_c,
        jbcxm_answer_score_c,
        jbcxm_cloned_from_c,
        jbcxm_default_answer_c,
        jbcxm_default_text_c,
        jbcxm_display_order_c,
        jbcxm_group_alignment_c,
        jbcxm_group_icon_c,
        jbcxm_group_label_c,
        jbcxm_is_active_c,
        jbcxm_is_translation_c,
        jbcxm_language_c,
        jbcxm_open_answer_size_c,
        jbcxm_open_comments_columns_size_c,
        jbcxm_open_comments_row_size_c,
        jbcxm_survey_master_c,
        jbcxm_survey_question_c,
        jbcxm_title_c,
        jbcxm_translation_for_c,
        jbcxm_user_response_count_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
