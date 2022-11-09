
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_round_robin_grouping_c_history') }}

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
        lean_data_capping_enabled_c,
        lean_data_capping_frequency_c,
        lean_data_capping_reset_c,
        lean_data_current_order_position_c,
        lean_data_current_weight_value_c,
        lean_data_grouping_name_c,
        lean_data_manual_next_owner_id_c,
        lean_data_object_type_c,
        lean_data_weighting_enabled_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
