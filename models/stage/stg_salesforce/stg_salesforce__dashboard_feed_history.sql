
with source as (

    select * from {{ source('raw_salesforce', 'dashboard_feed_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        body,
        comment_count,
        created_by_id,
        created_date,
        inserted_by_id,
        is_deleted,
        is_rich_text,
        last_modified_date,
        like_count,
        link_url,
        network_scope,
        parent_id,
        related_record_id,
        system_modstamp,
        title,
        type,
        visibility,
        best_comment_id

    from source

)

select * from renamed
