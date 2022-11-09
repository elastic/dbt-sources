
with source as (

    select * from {{ source('raw_salesforce', 'gong_gong_scorecard_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        gong_answer_formula_c,
        gong_answered_user_lookup_c,
        gong_gong_interaction_c,
        gong_question_url_c,
        gong_reviewed_user_lookup_c,
        gong_scorecard_answer_date_c,
        gong_scorecard_call_date_c,
        gong_scorecard_call_name_c,
        gong_scorecard_full_question_c,
        gong_scorecard_is_published_c,
        gong_scorecard_name_c,
        gong_scorecard_question_answer_is_na_c,
        gong_scorecard_question_answer_note_c,
        gong_scorecard_question_answer_score_c,
        gong_scorecard_question_answer_text_c,
        gong_scorecard_question_c,
        gong_scorecard_question_full_open_answer_c,
        gong_scorecard_question_has_note_c,
        gong_scorecard_question_is_overall_c,
        gong_scorecard_question_range_max_c,
        gong_scorecard_question_type_c,
        gong_scorecard_visibility_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
