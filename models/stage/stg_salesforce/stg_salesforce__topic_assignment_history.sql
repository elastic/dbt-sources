
with source as (

    select * from {{ source('raw_salesforce', 'topic_assignment_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        entity_id,
        entity_key_prefix,
        entity_type,
        is_deleted,
        network_id,
        system_modstamp,
        topic_id

    from source

)

select * from renamed
