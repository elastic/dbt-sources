
with source as (

    select * from {{ source('raw_salesforce', 'language_io_linguist_now_settings_public_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        language_io_linguist_now_auto_send_draft_c,
        language_io_linguist_now_comment_human_or_machine_c,
        language_io_linguist_now_consumer_id_c,
        language_io_linguist_now_custom_status_field_c,
        language_io_linguist_now_desc_and_activity_human_or_machine_c,
        language_io_linguist_now_description_template_c,
        language_io_linguist_now_disable_retranslate_c,
        language_io_linguist_now_draft_divider_c,
        language_io_linguist_now_email_action_c,
        language_io_linguist_now_email_draft_human_or_machine_c,
        language_io_linguist_now_email_draft_label_c,
        language_io_linguist_now_email_text_or_html_c,
        language_io_linguist_now_feed_translation_c,
        language_io_linguist_now_hide_email_options_c,
        language_io_linguist_now_hide_post_comments_c,
        language_io_linguist_now_hide_post_options_c,
        language_io_linguist_now_human_word_count_field_name_c,
        language_io_linguist_now_locale_field_name_c,
        language_io_linguist_now_named_credential_c,
        language_io_linguist_now_only_show_translations_in_plugin_c,
        language_io_linguist_now_only_update_status_on_human_c,
        language_io_linguist_now_post_comments_are_public_c,
        language_io_linguist_now_post_comments_label_c,
        language_io_linguist_now_post_human_or_machine_c,
        language_io_linguist_now_retranslate_human_or_machine_c,
        language_io_linguist_now_show_subject_c,
        language_io_linguist_now_status_on_pending_c,
        language_io_linguist_now_status_on_update_c,
        language_io_linguist_now_time_to_wait_c,
        language_io_linguist_now_treat_comments_as_foreign_c,
        language_io_linguist_now_url_c,
        language_io_linguist_now_word_count_field_name_c,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
