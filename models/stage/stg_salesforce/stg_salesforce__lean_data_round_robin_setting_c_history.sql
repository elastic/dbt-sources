
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_round_robin_setting_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_grouping_name_c,
        lean_data_hours_c,
        lean_data_object_type_c,
        lean_data_owner_id_c,
        lean_data_owner_order_c,
        lean_data_time_stamp_c,
        lean_data_weighting_next_pointer_c,
        lean_data_weighting_value_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_capping_last_reset_c,
        lean_data_current_cap_value_c,
        lean_data_inactive_reason_c,
        lean_data_is_available_for_routing_c,
        lean_data_json_configuration_c,
        lean_data_member_round_robin_setting_c,
        lean_data_pool_c,
        lean_data_reset_weighting_pointer_c,
        lean_data_status_c,
        lean_data_type_c,
        lean_data_user_owner_c,
        lean_data_cap_c,
        lean_data_capping_limit_override_c,
        lean_data_grouping_c,
        lean_data_time_step_c

    from source

)

select * from renamed
