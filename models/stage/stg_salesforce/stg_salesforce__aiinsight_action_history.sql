
with source as (

    select * from {{ source('raw_salesforce', 'aiinsight_action_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        action_id,
        action_name,
        ai_record_insight_id,
        confidence,
        created_by_id,
        created_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        type

    from source

)

select * from renamed
