
with source as (

    select * from {{ source('raw_netsuite', 'esl_audit_trail_summary_history') }}

),

renamed as (

    select
        date_created,
        esl_audit_trail_summary_extid,
        esl_audit_trail_summary_id,
        from_date,
        is_inactive,
        last_modified_date,
        parent_id,
        submitter_vat_reg_no_,
        submit_date,
        submit_status,
        submit_status_message,
        submit_user,
        subsidiary,
        tax_period_type,
        to_date,
        xml_request,
        xml_response

    from source

)

select * from renamed