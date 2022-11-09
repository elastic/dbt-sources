
with source as (

    select * from {{ source('raw_salesforce', 'location') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        is_inventory_location,
        is_mobile,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        location_type,
        name,
        owner_id,
        root_location_id,
        system_modstamp,
        logo_id,
        external_reference,
        open_date,
        close_date,
        remodel_start_date,
        latitude,
        parent_location_id,
        description,
        time_zone,
        remodel_end_date,
        construction_start_date,
        construction_end_date,
        location_level,
        driving_directions,
        possession_date,
        longitude

    from source

)

select * from renamed
