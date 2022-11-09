
with source as (

    select * from {{ source('raw_salesforce', 'aiinsight_reason_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        ai_insight_value_id,
        contribution,
        created_by_id,
        created_date,
        feature_type,
        feature_value,
        field_name,
        field_value,
        id,
        intensity,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        operator,
        system_modstamp,
        variance

    from source

)

select * from renamed
