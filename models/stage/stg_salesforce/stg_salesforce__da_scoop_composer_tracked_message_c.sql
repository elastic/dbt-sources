
with source as (

    select * from {{ source('raw_salesforce', 'da_scoop_composer_tracked_message_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        da_scoop_composer_date_sent_c,
        da_scoop_composer_email_message_id_c,
        da_scoop_composer_email_service_c,
        da_scoop_composer_gmail_id_c,
        da_scoop_composer_main_recipient_email_c,
        da_scoop_composer_message_c,
        da_scoop_composer_message_id_c,
        da_scoop_composer_reply_recorded_c,
        da_scoop_composer_sender_c,
        da_scoop_composer_template_c,
        da_scoop_composer_template_folder_c,
        da_scoop_composer_template_id_c,
        da_scoop_composer_template_used_c,
        da_scoop_composer_times_opened_c,
        da_scoop_composer_uid_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
