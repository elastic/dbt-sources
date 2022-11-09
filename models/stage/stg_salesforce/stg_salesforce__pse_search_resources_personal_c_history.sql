
with source as (

    select * from {{ source('raw_salesforce', 'pse_search_resources_personal_c_history') }}

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
        name,
        pse_default_search_logic_additional_fields_c,
        pse_default_search_logic_for_certification_c,
        pse_default_search_logic_for_skill_c,
        pse_distance_unit_c,
        pse_fields_to_list_in_map_push_pin_c,
        pse_max_columns_allowed_in_result_section_c,
        pse_maximum_resources_c,
        pse_number_of_allowed_push_pins_on_map_c,
        pse_page_size_c,
        pse_show_latitude_longitude_fields_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
