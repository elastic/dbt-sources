
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_response_c') }}

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
        jbcxm_associated_object_display_value_c,
        jbcxm_associated_object_record_id_c,
        jbcxm_associated_object_record_value_c,
        jbcxm_npscomment_c,
        jbcxm_npsscore_c,
        jbcxm_npsscore_text_c,
        jbcxm_npsscore_type_c,
        jbcxm_relationship_c,
        jbcxm_response_date_c,
        jbcxm_survey_code_c,
        jbcxm_survey_participant_id_c,
        jbcxm_true_nps_c,
        jbcxm_user_email_c,
        jbcxm_user_name_c,
        jbcxm_user_role_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
