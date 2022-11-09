
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_location_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        contact_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        learndot_city_c,
        learndot_country_alpha_2_code_c,
        learndot_country_name_c,
        learndot_id_c,
        learndot_name_c,
        learndot_online_c,
        learndot_postal_code_c,
        learndot_provider_c,
        learndot_region_c,
        learndot_street_1_c,
        learndot_street_2_c,
        learndot_timezone_c,
        learndot_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
