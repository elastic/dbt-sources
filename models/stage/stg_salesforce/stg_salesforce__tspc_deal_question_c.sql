
with source as (

    select * from {{ source('raw_salesforce', 'tspc_deal_question_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        tspc_answer_c,
        tspc_answers_count_c,
        tspc_answers_score_c,
        tspc_answers_selected_count_c,
        tspc_category_c,
        tspc_deal_c,
        tspc_eid_c,
        tspc_has_multiselect_c,
        tspc_has_text_answer_c,
        tspc_is_answered_c,
        tspc_max_score_c,
        tspc_mode_c,
        tspc_notes_c,
        tspc_question_category_c,
        tspc_rich_text_answer_c,
        tspc_score_c,
        tspc_sort_order_c,
        tspc_template_question_c,
        tspc_text_answer_c,
        tspc_text_answer_full_c,
        tspc_text_c,
        question_score_c

    from source

)

select * from renamed
