
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_event_c') }}

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
        last_referenced_date,
        last_viewed_date,
        learndot_capacity_c,
        learndot_course_name_c,
        learndot_end_time_c,
        learndot_equipment_provided_c,
        learndot_food_provided_c,
        learndot_id_c,
        learndot_instructor_c,
        learndot_language_c,
        learndot_location_c,
        learndot_organizer_c,
        learndot_price_c,
        learndot_provider_c,
        learndot_refreshments_provided_c,
        learndot_snacks_provided_c,
        learndot_start_time_c,
        learndot_status_c,
        learndot_total_hours_c,
        learndot_training_opportunity_c,
        learndot_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
