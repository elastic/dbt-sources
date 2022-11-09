
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_logic_rules_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_answer_c,
        jbcxm_criteria_c,
        jbcxm_dependent_question_c,
        jbcxm_logic_type_c,
        jbcxm_page_info_c,
        jbcxm_sub_question_c,
        jbcxm_survey_master_c,
        jbcxm_survey_question_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
