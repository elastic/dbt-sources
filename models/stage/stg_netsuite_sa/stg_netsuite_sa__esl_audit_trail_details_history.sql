
with source as (

    select * from {{ source('raw_netsuite_sa', 'esl_audit_trail_details_history') }}

),

renamed as (

    select
        esl_audit_trail_details_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_code,
        customer_name,
        customer_vat_reg_no_,
        date_created,
        date_deleted,
        error_message,
        esl_audit_trail_details_extid,
        esl_audit_trail_parent_id,
        is_inactive,
        last_modified_date,
        line_submit_status,
        parent_id,
        submitter_ref_nbr,
        total_value,
        transaction_indicator,
        partition_date

    from source

)

select * from renamed
