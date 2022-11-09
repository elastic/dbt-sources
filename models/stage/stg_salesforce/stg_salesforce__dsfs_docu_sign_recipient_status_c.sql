
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_docu_sign_recipient_status_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dsfs_account_c,
        dsfs_contact_c,
        dsfs_date_declined_c,
        dsfs_date_delivered_c,
        dsfs_date_sent_c,
        dsfs_date_signed_c,
        dsfs_decline_reason_c,
        dsfs_decline_reason_extended_c,
        dsfs_docu_sign_recipient_company_c,
        dsfs_docu_sign_recipient_email_c,
        dsfs_docu_sign_recipient_id_c,
        dsfs_docu_sign_recipient_title_c,
        dsfs_docu_sign_routing_order_c,
        dsfs_envelope_id_c,
        dsfs_lead_c,
        dsfs_parent_status_record_c,
        dsfs_recipient_status_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
