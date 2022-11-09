
with source as (

    select * from {{ source('raw_salesforce', 'location_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        field,
        is_deleted,
        location_id,
        new_value,
        old_value,
        currency_iso_code,
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
        data_type,
        external_reference,
        logo_id,
        close_date,
        construction_end_date,
        construction_start_date,
        description,
        driving_directions,
        latitude,
        location_level,
        longitude,
        open_date,
        parent_location_id,
        possession_date,
        remodel_end_date,
        remodel_start_date,
        time_zone

    from source

)

select * from renamed
