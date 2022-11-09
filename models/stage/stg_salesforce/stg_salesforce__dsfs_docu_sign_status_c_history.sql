
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_docu_sign_status_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dsfs_case_c,
        dsfs_company_c,
        dsfs_completed_date_time_c,
        dsfs_contact_c,
        dsfs_contract_c,
        dsfs_declined_date_time_c,
        dsfs_declined_reason_c,
        dsfs_declined_reason_extended_c,
        dsfs_docu_sign_envelope_id_c,
        dsfs_envelope_configuration_c,
        dsfs_envelope_link_c,
        dsfs_envelope_status_c,
        dsfs_lead_c,
        dsfs_opportunity_c,
        dsfs_sender_c,
        dsfs_sender_email_c,
        dsfs_sent_date_time_c,
        dsfs_subject_c,
        dsfs_viewed_date_time_c,
        dsfs_voided_date_time_c,
        dsfs_voided_reason_c,
        dsfs_voided_reason_extended_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        quote_c,
        dsfs_completed_age_c,
        dsfs_days_to_complete_c,
        dsfs_hours_to_complete_c,
        dsfs_hrs_sent_to_sign_c,
        dsfs_minutes_to_complete_c,
        dsfs_number_completed_c,
        dsfs_sent_age_c,
        dsfs_time_to_complete_c,
        link_to_envelope_c,
        quote_net_amount_c,
        envelope_route_c,
        quote_document_c,
        agreement_c,
        opportunity_poamt_sum_c,
        opportunity_stage_c

    from source

)

select * from renamed
