
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_company_feed_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        best_comment_id,
        body,
        comment_count,
        created_by_id,
        created_date,
        id,
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
        visibility

    from source

)

select * from renamed
