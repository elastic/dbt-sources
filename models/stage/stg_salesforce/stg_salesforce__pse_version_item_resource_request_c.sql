
with source as (

    select * from {{ source('raw_salesforce', 'pse_version_item_resource_request_c') }}

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
        name,
        pse_account_c,
        pse_assignment_id_c,
        pse_assignment_name_c,
        pse_end_date_c,
        pse_milestone_id_c,
        pse_milestone_name_c,
        pse_original_created_by_id_c,
        pse_original_created_by_name_c,
        pse_original_created_date_c,
        pse_original_id_c,
        pse_original_last_modified_by_id_c,
        pse_original_last_modified_by_name_c,
        pse_original_last_modified_date_c,
        pse_original_owner_id_c,
        pse_original_owner_name_c,
        pse_percent_allocated_c,
        pse_request_priority_c,
        pse_requested_bill_rate_c,
        pse_resource_held_c,
        pse_resource_id_c,
        pse_resource_name_c,
        pse_resource_request_id_c,
        pse_resource_request_name_c,
        pse_resource_role_c,
        pse_sow_hours_c,
        pse_staffer_resource_id_c,
        pse_staffer_resource_name_c,
        pse_start_date_c,
        pse_status_c,
        pse_version_c,
        system_modstamp

    from source

)

select * from renamed
