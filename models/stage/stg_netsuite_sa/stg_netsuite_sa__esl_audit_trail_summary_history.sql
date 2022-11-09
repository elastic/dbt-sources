
with source as (

    select * from {{ source('raw_netsuite_sa', 'esl_audit_trail_summary_history') }}

),

renamed as (

    select
        esl_audit_trail_summary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        esl_audit_trail_summary_extid,
        from_date,
        is_inactive,
        last_modified_date,
        parent_id,
        submit_date,
        submit_status,
        submit_status_message,
        submit_user,
        submitter_vat_reg_no_,
        subsidiary,
        tax_period_type,
        to_date,
        xml_request,
        xml_response,
        partition_date

    from source

)

select * from renamed
