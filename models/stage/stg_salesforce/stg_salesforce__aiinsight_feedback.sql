
with source as (

    select * from {{ source('raw_salesforce', 'aiinsight_feedback') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        actual_value,
        ai_feedback,
        ai_insight_feedback_type,
        ai_record_insight_id,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        rank,
        system_modstamp,
        value_id

    from source

)

select * from renamed
