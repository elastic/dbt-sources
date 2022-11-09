
with source as (

    select * from {{ source('raw_netsuite', 'training_event_history') }}

),

renamed as (

    select
        city,
        course_number,
        date_created,
        ignore_capacity,
        is_inactive,
        last_modified_date,
        parent_id,
        time_zone_0,
        title,
        training_end_date,
        training_event_extid,
        training_event_id,
        training_event_id_0,
        training_event_name,
        training_event_subsidiary_id,
        training_item_id,
        training_location_display_nam,
        training_location_id,
        training_start_date,
        available_seats,
        training_discount_id

    from source

)

select * from renamed
