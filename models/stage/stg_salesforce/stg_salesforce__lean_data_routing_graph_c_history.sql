
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_routing_graph_c_history') }}

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
        lean_data_graph_json_2_c,
        lean_data_graph_json_3_c,
        lean_data_graph_json_4_c,
        lean_data_graph_json_5_c,
        lean_data_graph_json_6_c,
        lean_data_graph_json_c,
        lean_data_graph_version_c,
        lean_data_is_valid_c,
        lean_data_name_c,
        lean_data_object_type_c,
        lean_data_preview_image_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_graph_json_7_c,
        lean_data_edited_by_c,
        lean_data_last_access_date_c,
        lean_data_last_saved_by_c,
        lean_data_last_saved_date_c,
        lean_data_ld_business_unit_c,
        lean_data_type_c,
        lean_data_has_routing_priorities_c

    from source

)

select * from renamed
