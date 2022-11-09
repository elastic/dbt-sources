
with source as (

    select * from {{ source('raw_netsuite', 'esl_audit_trail_details_history') }}

),

renamed as (

    select
        country_code,
        customer_name,
        customer_vat_reg_no_,
        date_created,
        error_message,
        esl_audit_trail_details_extid,
        esl_audit_trail_details_id,
        esl_audit_trail_parent_id,
        is_inactive,
        last_modified_date,
        line_submit_status,
        parent_id,
        submitter_ref_nbr,
        total_value,
        transaction_indicator

    from source

)

select * from renamed
