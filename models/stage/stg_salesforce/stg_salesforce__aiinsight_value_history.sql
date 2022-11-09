
with source as (

    select * from {{ source('raw_salesforce', 'aiinsight_value_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        ai_insight_action_id,
        ai_record_insight_id,
        confidence,
        created_by_id,
        created_date,
        field,
        field_value_lower_bound,
        field_value_upper_bound,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        sobject_lookup_value_id,
        sobject_type,
        system_modstamp,
        value,
        value_type

    from source

)

select * from renamed
