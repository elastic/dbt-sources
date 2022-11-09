
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_erp_messaging_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_logging_level_c,
        fferpcore_query_builder_maximum_lookdowns_c,
        fferpcore_query_builder_maximum_lookup_depth_c,
        fferpcore_query_builder_maximum_relationships_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
