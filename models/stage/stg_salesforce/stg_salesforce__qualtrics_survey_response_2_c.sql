
with source as (

    select * from {{ source('raw_salesforce', 'qualtrics_survey_response_2_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        qualtrics_textarealong_c,
        qualtrics_other_response_c,
        qualtrics_checkbox_1_c,
        qualtrics_phone_1_c,
        qualtrics_url_1_c,
        qualtrics_textarearich_2_c,
        qualtrics_textarea_1_c,
        qualtrics_number_1_c,
        qualtrics_text_1_c,
        qualtrics_email_1_c,
        qualtrics_datetime_1_c,
        qualtrics_date_1_c,
        qualtrics_percent_1_c,
        qualtrics_lead_c,
        qualtrics_comments_c,
        qualtrics_picklist_1_c,
        qualtrics_multipicklist_1_c,
        qualtrics_currency_1_c,
        qualtrics_textareaencrypted_c,
        qualtrics_textarearich_c

    from source

)

select * from renamed
