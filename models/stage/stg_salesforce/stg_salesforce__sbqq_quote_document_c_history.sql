
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_quote_document_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_attachment_id_c,
        sbqq_customer_amount_c,
        sbqq_document_id_c,
        sbqq_electronic_signature_c,
        sbqq_key_c,
        sbqq_list_amount_c,
        sbqq_net_amount_c,
        sbqq_opportunity_c,
        sbqq_output_format_c,
        sbqq_paper_size_c,
        sbqq_quote_c,
        sbqq_quote_template_c,
        sbqq_signature_status_c,
        sbqq_template_c,
        sbqq_version_c,
        system_modstamp,
        sbqq_primary_contact_id_c,
        sbqq_view_record_id_c,
        view_c,
        envelope_route_c,
        opportunity_poamt_sum_c,
        auto_renewal_comms_step_c,
        renewals_team_email_c,
        renewals_team_name_c,
        renewals_team_phone_c,
        signatory_contact_name_c,
        send_automatically_c

    from source

)

select * from renamed
