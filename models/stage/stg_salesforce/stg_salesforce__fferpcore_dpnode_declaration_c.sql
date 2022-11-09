
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_dpnode_declaration_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_error_message_c,
        fferpcore_json_path_c,
        fferpcore_literal_source_data_c,
        fferpcore_literal_source_description_c,
        fferpcore_node_type_c,
        fferpcore_publication_c,
        fferpcore_sequence_c,
        fferpcore_source_key_c,
        fferpcore_source_type_c,
        fferpcore_uniqueness_constraint_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
