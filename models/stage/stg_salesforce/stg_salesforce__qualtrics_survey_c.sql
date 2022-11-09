
with source as (

    select * from {{ source('raw_salesforce', 'qualtrics_survey_c') }}

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
        qualtrics_email_missing_c,
        qualtrics_email_opt_out_c,
        qualtrics_message_id_c,
        qualtrics_panel_count_c,
        qualtrics_panel_id_c,
        qualtrics_panel_name_c,
        qualtrics_panel_type_c,
        qualtrics_quick_start_name_c,
        qualtrics_quick_start_survey_c,
        qualtrics_responded_c,
        qualtrics_selected_c,
        qualtrics_sent_c,
        qualtrics_sent_date_c,
        qualtrics_status_c,
        qualtrics_survey_id_c,
        qualtrics_survey_title_c,
        system_modstamp

    from source

)

select * from renamed
