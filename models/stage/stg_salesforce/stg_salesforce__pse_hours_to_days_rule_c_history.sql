
with source as (

    select * from {{ source('raw_salesforce', 'pse_hours_to_days_rule_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_custom_plugin_name_c,
        pse_custom_plugin_namespace_c,
        pse_days_value_10_c,
        pse_days_value_11_c,
        pse_days_value_12_c,
        pse_days_value_13_c,
        pse_days_value_14_c,
        pse_days_value_15_c,
        pse_days_value_16_c,
        pse_days_value_17_c,
        pse_days_value_18_c,
        pse_days_value_19_c,
        pse_days_value_1_c,
        pse_days_value_20_c,
        pse_days_value_21_c,
        pse_days_value_22_c,
        pse_days_value_23_c,
        pse_days_value_24_c,
        pse_days_value_2_c,
        pse_days_value_3_c,
        pse_days_value_4_c,
        pse_days_value_5_c,
        pse_days_value_6_c,
        pse_days_value_7_c,
        pse_days_value_8_c,
        pse_days_value_9_c,
        pse_hour_threshold_10_c,
        pse_hour_threshold_11_c,
        pse_hour_threshold_12_c,
        pse_hour_threshold_13_c,
        pse_hour_threshold_14_c,
        pse_hour_threshold_15_c,
        pse_hour_threshold_16_c,
        pse_hour_threshold_17_c,
        pse_hour_threshold_18_c,
        pse_hour_threshold_19_c,
        pse_hour_threshold_1_c,
        pse_hour_threshold_20_c,
        pse_hour_threshold_21_c,
        pse_hour_threshold_22_c,
        pse_hour_threshold_23_c,
        pse_hour_threshold_24_c,
        pse_hour_threshold_2_c,
        pse_hour_threshold_3_c,
        pse_hour_threshold_4_c,
        pse_hour_threshold_5_c,
        pse_hour_threshold_6_c,
        pse_hour_threshold_7_c,
        pse_hour_threshold_8_c,
        pse_hour_threshold_9_c,
        pse_is_default_c,
        pse_maximum_days_value_c,
        pse_per_increment_10_c,
        pse_per_increment_11_c,
        pse_per_increment_12_c,
        pse_per_increment_13_c,
        pse_per_increment_14_c,
        pse_per_increment_15_c,
        pse_per_increment_16_c,
        pse_per_increment_17_c,
        pse_per_increment_18_c,
        pse_per_increment_19_c,
        pse_per_increment_1_c,
        pse_per_increment_20_c,
        pse_per_increment_21_c,
        pse_per_increment_22_c,
        pse_per_increment_23_c,
        pse_per_increment_24_c,
        pse_per_increment_2_c,
        pse_per_increment_3_c,
        pse_per_increment_4_c,
        pse_per_increment_5_c,
        pse_per_increment_6_c,
        pse_per_increment_7_c,
        pse_per_increment_8_c,
        pse_per_increment_9_c,
        pse_rule_type_c,
        system_modstamp

    from source

)

select * from renamed
