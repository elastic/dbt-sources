
with source as (

    select * from {{ source('raw_salesforce', 'country_region_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        country_c,
        country_code_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        region_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
