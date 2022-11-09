
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_opportunity_c') }}

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
        learndot_actual_duration_days_c,
        learndot_actual_duration_minutes_per_day_c,
        learndot_additional_participant_fee_amount_c,
        learndot_amount_c,
        learndot_approximate_participants_c,
        learndot_currency_c,
        learndot_customer_account_c,
        learndot_customer_c,
        learndot_estimated_duration_c,
        learndot_expected_close_date_c,
        learndot_expenses_fee_c,
        learndot_experience_c,
        learndot_id_c,
        learndot_instructor_led_training_c,
        learndot_last_modified_c,
        learndot_learndot_created_c,
        learndot_location_c,
        learndot_number_of_participants_c,
        learndot_opportunity_type_c,
        learndot_owner_c,
        learndot_request_for_c,
        learndot_requested_customization_c,
        learndot_stage_c,
        learndot_timeframe_c,
        learndot_training_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
