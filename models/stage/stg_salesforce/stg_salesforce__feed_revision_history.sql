
with source as (

    select * from {{ source('raw_salesforce', 'feed_revision_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        action,
        created_by_id,
        created_date,
        edited_attribute,
        feed_entity_id,
        is_deleted,
        is_value_rich_text,
        origin_network_id,
        revision,
        system_modstamp,
        value

    from source

)

select * from renamed
