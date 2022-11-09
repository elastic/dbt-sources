
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_docu_sign_envelope_recipient_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dsfs_access_code_c,
        dsfs_docu_sign_envelope_id_c,
        dsfs_docu_sign_recipient_role_c,
        dsfs_docu_sign_signature_name_c,
        dsfs_docu_sign_signer_type_c,
        dsfs_dser_contact_id_c,
        dsfs_dser_custom_features_c,
        dsfs_dser_custom_features_ex_c,
        dsfs_dser_custom_id_c,
        dsfs_dser_custom_name_c,
        dsfs_dser_lead_id_c,
        dsfs_dser_user_id_c,
        dsfs_email_body_c,
        dsfs_email_subject_c,
        dsfs_id_check_c,
        dsfs_language_c,
        dsfs_language_code_c,
        dsfs_recipient_email_c,
        dsfs_recipient_id_c,
        dsfs_recipient_note_c,
        dsfs_recipient_note_long_c,
        dsfs_role_name_c,
        dsfs_role_value_c,
        dsfs_routing_order_c,
        dsfs_salesforce_recipient_type_c,
        dsfs_sign_in_person_email_c,
        dsfs_sign_in_person_name_c,
        dsfs_sign_now_c,
        dsfs_signing_group_id_c,
        dsfs_smsauthentication_phone_number_c,
        dsfs_validation_message_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp

    from source

)

select * from renamed
