
with source as (

    select * from {{ source('raw_salesforce', 'airecord_insight_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        confidence,
        created_by_id,
        created_date,
        id,
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
        valid_until

    from source

)

select * from renamed
