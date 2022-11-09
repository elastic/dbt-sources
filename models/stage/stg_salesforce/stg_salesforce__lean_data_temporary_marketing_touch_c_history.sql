
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_temporary_marketing_touch_c_history') }}

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
        lean_data_campaign_c,
        lean_data_opportunity_c,
        name,
        system_modstamp,
        lean_data_accelerated_touch_order_c,
        lean_data_account_c,
        lean_data_attribution_value_c,
        lean_data_campaign_member_created_date_c,
        lean_data_campaign_member_id_c,
        lean_data_campaign_member_object_type_c,
        lean_data_campaign_member_status_c,
        lean_data_campaign_member_status_weight_c,
        lean_data_campaign_type_c,
        lean_data_campaign_type_weight_c,
        lean_data_closed_won_c,
        lean_data_contact_c,
        lean_data_contact_role_c,
        lean_data_cost_per_touch_c,
        lean_data_current_opportunity_touch_stage_date_c,
        lean_data_days_to_opportunity_close_c,
        lean_data_days_to_opportunity_created_c,
        lean_data_first_sales_touch_c,
        lean_data_first_sales_touch_date_c,
        lean_data_ft_attribution_amount_c,
        lean_data_ft_attribution_percentage_c,
        lean_data_ft_bookings_attribution_amount_c,
        lean_data_generated_touch_order_c,
        lean_data_lead_c,
        lean_data_lt_attribution_amount_c,
        lean_data_lt_attribution_percentage_c,
        lean_data_lt_generated_attr_amount_c,
        lean_data_lt_generated_attr_percentage_c,
        lean_data_mt_accelerated_attr_amount_c,
        lean_data_mt_accelerated_attr_percentage_c,
        lean_data_mt_attribution_amount_c,
        lean_data_mt_attribution_percentage_c,
        lean_data_mt_generated_attr_amount_c,
        lean_data_mt_generated_attr_percentage_c,
        lean_data_next_opportunity_touch_stage_c,
        lean_data_next_opportunity_touch_stage_date_c,
        lean_data_opportunity_close_date_c,
        lean_data_opportunity_created_date_c,
        lean_data_opportunity_stage_c,
        lean_data_opportunity_stage_index_c,
        lean_data_opportunity_touch_stage_c,
        lean_data_opportunity_type_c,
        lean_data_related_campaign_c,
        lean_data_related_opportunity_c,
        lean_data_responded_c,
        lean_data_sourced_attribution_amount_c,
        lean_data_sourced_attribution_percentage_c,
        lean_data_sourced_bookings_attribution_amount_c,
        lean_data_target_account_c,
        lean_data_touch_order_c,
        lean_data_touch_pre_opportunity_c,
        lean_data_touch_pre_sales_c,
        lean_data_weighted_ft_attribution_amount_c,
        lean_data_weighted_ft_attribution_percentage_c,
        lean_data_weighted_ft_bookings_attribution_amount_c,
        lean_data_weighted_lt_attribution_amount_c,
        lean_data_weighted_lt_attribution_percentage_c,
        lean_data_weighted_lt_generated_attr_amount_c,
        lean_data_weighted_lt_generated_attr_percentage_c,
        lean_data_weighted_mt_accelerated_attr_amount_c,
        lean_data_weighted_mt_accelerated_attr_percentage_c,
        lean_data_weighted_mt_attribution_amount_c,
        lean_data_weighted_mt_attribution_percentage_c,
        lean_data_weighted_mt_generated_attr_amount_c,
        lean_data_weighted_mt_generated_attr_percentage_c,
        lean_data_weighted_sourced_attribution_amount_c,
        lean_data_weighted_sourced_attribution_percentage_c,
        lean_data_weighted_sourced_bookings_attribution_c

    from source

)

select * from renamed
