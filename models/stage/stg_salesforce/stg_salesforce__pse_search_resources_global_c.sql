
with source as (

    select * from {{ source('raw_salesforce', 'pse_search_resources_global_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_allow_special_characters_in_address_c,
        pse_contact_field_1_c,
        pse_contact_field_2_c,
        pse_contact_field_3_c,
        pse_display_resource_description_c,
        pse_geolocation_service_url_c,
        pse_invalid_longitude_and_latitude_pairs_c,
        pse_mapquest_endpoint_url_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
