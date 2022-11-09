
with source as (

    select * from {{ source('raw_salesforce', 'mlmodel') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        approval_status,
        created_by_id,
        created_date,
        dataset,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        model_type,
        name,
        prediction_definition_id,
        recommendation_definition_id,
        scoring_status,
        system_modstamp,
        training_end_time,
        training_start_time

    from source

)

select * from renamed
