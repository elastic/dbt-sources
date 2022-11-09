
with source as (

    select * from {{ source('raw_salesforce', 'pse_team_c') }}

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
        owner_id,
        pse_all_team_members_c,
        pse_anyone_with_edit_access_c,
        pse_description_c,
        pse_enable_swapping_c,
        pse_now_assigned_c,
        pse_previously_assigned_c,
        pse_project_c,
        pse_schedule_custom_template_name_c,
        pse_schedule_other_email_addresses_c,
        pse_schedule_send_email_to_others_c,
        pse_schedule_use_custom_template_c,
        pse_swap_custom_template_name_c,
        pse_swap_other_email_addresses_c,
        pse_swap_send_email_to_others_c,
        pse_swap_use_custom_template_c,
        pse_team_owner_c,
        pse_time_zone_c,
        system_modstamp

    from source

)

select * from renamed
