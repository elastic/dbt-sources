
with source as (

    select * from {{ source('raw_salesforce', 'oootime_zone_offset_map_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        business_hours_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        offset_minutes_c,
        setup_owner_id,
        system_modstamp,
        time_zone_c

    from source

)

select * from renamed
