
with source as (

    select * from {{ source('raw_salesforce', 'tspc_deal_stakeholder_c') }}

),

renamed as (

    select
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
        system_modstamp,
        tspc_color_c,
        tspc_contact_c,
        tspc_contact_name_c,
        tspc_deal_c,
        tspc_decision_status_c,
        tspc_description_c,
        tspc_details_c,
        tspc_display_name_c,
        tspc_eid_c,
        tspc_entry_action_c,
        tspc_entry_source_c,
        tspc_ghost_title_c,
        tspc_goal_c,
        tspc_has_power_c,
        tspc_hash_c,
        tspc_icon_c,
        tspc_is_ghost_c,
        tspc_is_mapped_c,
        tspc_label_c,
        tspc_relationship_c,
        tspc_reports_to_c,
        tspc_role_c,
        tspc_sibling_sort_order_c,
        tspc_submap_c,
        tspc_support_status_c,
        tspc_type_c,
        tspc_user_c

    from source

)

select * from renamed
