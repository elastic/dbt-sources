
with source as (

    select * from {{ source('raw_salesforce', 'support_level_license_map_c_history') }}

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
        license_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
