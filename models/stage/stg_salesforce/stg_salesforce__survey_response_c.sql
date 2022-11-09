
with source as (

    select * from {{ source('raw_salesforce', 'survey_response_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        company_c,
        contact_email_c,
        created_by_id,
        created_date,
        currency_iso_code,
        e_mail_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        nameof_attendee_c,
        owner_id,
        phone_c,
        question_b_11_c,
        question_b_12_c,
        question_b_13_c,
        question_b_14_c,
        question_b_15_c,
        question_b_16_c,
        question_b_17_c,
        question_b_18_c,
        question_b_19_c,
        question_b_20_c,
        question_b_21_c,
        question_b_22_c,
        question_b_23_c,
        question_b_24_c,
        question_b_25_c,
        question_b_2_c,
        question_b_3_c,
        question_b_4_c,
        question_b_6_c,
        question_b_8_c,
        question_b_9_c,
        response_link_c,
        survey_end_time_c,
        survey_name_c,
        survey_start_time_c,
        survey_type_c,
        system_modstamp

    from source

)

select * from renamed
