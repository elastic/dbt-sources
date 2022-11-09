
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_question_c_history') }}

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
        jbcxm_allow_caption_c,
        jbcxm_allow_comment_c,
        jbcxm_allow_header_grouping_c,
        jbcxm_brand_c,
        jbcxm_caption_c,
        jbcxm_cloned_from_c,
        jbcxm_code_c,
        jbcxm_comment_label_c,
        jbcxm_data_type_c,
        jbcxm_dependent_c,
        jbcxm_display_order_c,
        jbcxm_display_preference_c,
        jbcxm_enable_answer_scoring_c,
        jbcxm_group_header_type_c,
        jbcxm_has_page_break_c,
        jbcxm_has_rules_c,
        jbcxm_header_c,
        jbcxm_help_text_c,
        jbcxm_image_c,
        jbcxm_is_active_c,
        jbcxm_is_internal_c,
        jbcxm_is_required_c,
        jbcxm_is_translation_c,
        jbcxm_language_c,
        jbcxm_lib_question_c,
        jbcxm_page_info_c,
        jbcxm_parent_question_c,
        jbcxm_rating_c,
        jbcxm_reporting_label_c,
        jbcxm_show_neutral_c,
        jbcxm_survey_master_c,
        jbcxm_title_c,
        jbcxm_translation_for_c,
        jbcxm_type_c,
        jbcxm_user_response_count_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
