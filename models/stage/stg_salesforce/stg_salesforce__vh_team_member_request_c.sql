
with source as (

    select * from {{ source('raw_salesforce', 'vh_team_member_request_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        vh_approver_c,
        vh_approver_comments_c,
        vh_assigned_team_member_c,
        vh_base_urlfor_email_c,
        vh_deliverable_end_date_c,
        vh_deliverable_scheduled_date_c,
        vh_deliverable_type_c,
        vh_demo_c,
        vh_exception_c,
        vh_opportunity_amount_c,
        vh_opportunity_c,
        vh_request_reason_c,
        vh_status_c,
        vh_tmr_flag_c,
        vh_type_c,
        tmr_approver_workday_id_c,
        tmr_assigned_tm_workday_id_c,
        tmr_created_by_workday_id_c,
        opportunity_1_c

    from source

)

select * from renamed
