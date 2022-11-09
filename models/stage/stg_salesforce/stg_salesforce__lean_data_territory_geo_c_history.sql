
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_territory_geo_c_history') }}

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
        lean_data_territory_c,
        name,
        system_modstamp,
        lean_data_canonical_city_c,
        lean_data_canonical_country_c,
        lean_data_canonical_state_c,
        lean_data_city_c,
        lean_data_country_c,
        lean_data_custom_field_c,
        lean_data_ld_territory_geo_c,
        lean_data_postal_code_c,
        lean_data_state_c,
        lean_data_version_c

    from source

)

select * from renamed
