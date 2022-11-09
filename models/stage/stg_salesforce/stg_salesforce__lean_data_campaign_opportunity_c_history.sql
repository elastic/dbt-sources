
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_campaign_opportunity_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_account_c,
        lean_data_attribution_value_c,
        lean_data_campaign_attribution_c,
        lean_data_campaign_attribution_percentage_c,
        lean_data_campaign_c,
        lean_data_campaign_member_attribution_c,
        lean_data_campaign_member_attribution_percentage_c,
        lean_data_campaign_member_created_date_c,
        lean_data_campaign_member_related_object_2_c,
        lean_data_campaign_member_related_object_c,
        lean_data_campaign_member_status_c,
        lean_data_campaign_member_status_weight_c,
        lean_data_campaign_roi_c,
        lean_data_campaign_type_c,
        lean_data_campaign_type_weight_c,
        lean_data_contact_c,
        lean_data_contact_role_c,
        lean_data_converted_lead_created_date_c,
        lean_data_cost_per_touch_c,
        lean_data_days_to_opportunity_close_c,
        lean_data_days_to_opportunity_created_c,
        lean_data_first_touch_attribution_c,
        lean_data_first_touch_attribution_percentage_c,
        lean_data_last_touch_attribution_c,
        lean_data_last_touch_attribution_percentage_c,
        lean_data_lead_c,
        lean_data_new_opportunity_c,
        lean_data_number_of_campaign_members_c,
        lean_data_opportunity_c,
        lean_data_opportunity_close_date_c,
        lean_data_opportunity_origination_c,
        lean_data_opportunity_stage_c,
        lean_data_opportunity_stage_index_c,
        lean_data_opportunity_touch_stage_c,
        lean_data_opportunity_type_c,
        lean_data_priority_c,
        lean_data_report_object_c,
        lean_data_responded_c,
        lean_data_touch_order_c,
        lean_data_touch_type_c,
        lean_data_weighted_attribution_c,
        lean_data_weighted_attribution_percentage_c,
        lean_data_weighted_first_touch_attribution_c,
        lean_data_weighted_ft_attribution_percentage_c,
        lean_data_weighted_last_touch_attribution_c,
        lean_data_weighted_lt_attribution_percentage_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_campaign_member_created_date_time_c

    from source

)

select * from renamed
