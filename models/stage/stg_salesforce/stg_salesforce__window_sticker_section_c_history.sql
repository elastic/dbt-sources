
with source as (

    select * from {{ source('raw_salesforce', 'window_sticker_section_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        allow_new_record_c,
        always_display_records_in_table_c,
        config_c,
        created_by_id,
        created_date,
        currency_iso_code,
        fields_configuration_json_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        order_c,
        owner_id,
        sobject_name_c,
        soql_query_c,
        static_text_on_section_c,
        system_modstamp

    from source

)

select * from renamed
