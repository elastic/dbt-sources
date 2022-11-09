
with source as (

    select * from {{ source('raw_netsuite', 'elastic_approvals') }}

),

renamed as (

    select
        approval_notes,
        approval_rule_group_id,
        approval_rule_id,
        approved_by_id,
        approved_date_time,
        approver_id,
        approver_role_id,
        date_created,
        elastic_approvals_extid,
        elastic_approvals_id,
        elastic_approvals_vendor_re_id,
        entity_bank_detail_record_id,
        entity_record_id,
        is_inactive,
        last_modified_date,
        new_vendor_request_id,
        parent_id,
        rule_group_json,
        rule_sequence,
        status_id,
        submitted_by_id,
        submitted_date,
        transaction_id,
        trigger_email

    from source

)

select * from renamed
