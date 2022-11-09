
with source as (

    select * from {{ source('raw_salesforce', 'airecord_insight') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        confidence,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        prediction_field,
        run_guid,
        run_start_time,
        status,
        system_modstamp,
        target_field,
        target_id,
        target_sobject_type,
        type,
        valid_until,
        ai_application_id,
        ml_prediction_definition_id,
        model_id

    from source

)

select * from renamed
