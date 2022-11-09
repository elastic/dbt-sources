
with source as (

    select * from {{ source('raw_salesforce', 'aiinsight_reason') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        ai_insight_value_id,
        contribution,
        created_by_id,
        created_date,
        feature_type,
        feature_value,
        field_name,
        field_value,
        intensity,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        operator,
        system_modstamp,
        variance,
        related_insight_reason_id,
        reason_label_key,
        sort_order

    from source

)

select * from renamed
