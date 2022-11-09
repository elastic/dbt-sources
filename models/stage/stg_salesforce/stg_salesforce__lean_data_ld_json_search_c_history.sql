
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_ld_json_search_c_history') }}

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
        lean_data_search_key_0_c,
        lean_data_search_key_1_c,
        lean_data_search_key_2_c,
        lean_data_search_key_3_c,
        lean_data_search_key_4_c,
        lean_data_search_key_5_c,
        lean_data_search_key_6_c,
        lean_data_search_key_7_c,
        lean_data_search_key_8_c,
        lean_data_search_key_9_c,
        lean_data_type_c,
        lean_data_value_0_c,
        lean_data_value_1_c,
        lean_data_value_2_c,
        lean_data_value_3_c,
        lean_data_value_4_c,
        lean_data_value_5_c,
        lean_data_value_6_c,
        lean_data_value_7_c,
        lean_data_value_8_c,
        lean_data_value_9_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
