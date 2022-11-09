
with source as (

    select * from {{ source('raw_salesforce', 'feed_item_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        best_comment_id,
        body,
        comment_count,
        created_by_id,
        created_date,
        has_content,
        has_feed_entity,
        has_link,
        has_verified_comment,
        inserted_by_id,
        is_deleted,
        is_rich_text,
        last_edit_by_id,
        last_edit_date,
        last_modified_date,
        like_count,
        link_url,
        network_scope,
        parent_id,
        related_record_id,
        revision,
        status,
        system_modstamp,
        title,
        type,
        visibility,
        is_closed

    from source

)

select * from renamed
