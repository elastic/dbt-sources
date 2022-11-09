
with source as (

    select * from {{ source('raw_salesforce', 'feed_comment_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        comment_body,
        comment_type,
        created_by_id,
        created_date,
        feed_item_id,
        inserted_by_id,
        is_deleted,
        is_rich_text,
        is_verified,
        last_edit_by_id,
        last_edit_date,
        parent_id,
        related_record_id,
        revision,
        status,
        system_modstamp,
        has_entity_links,
        thread_children_count,
        thread_last_updated_date,
        thread_level,
        thread_parent_id

    from source

)

select * from renamed
