
with source as (

    select * from {{ source('raw_salesforce', 'idea') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        body,
        categories,
        community_id,
        created_by_id,
        created_date,
        creator_full_photo_url,
        creator_name,
        creator_small_photo_url,
        currency_iso_code,
        is_deleted,
        is_html,
        is_merged,
        last_comment_id,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        parent_idea_id,
        record_type_id,
        status,
        system_modstamp,
        title,
        vote_score,
        vote_total,
        last_comment_date,
        num_comments,
        attachment_content_type,
        attachment_name,
        attachment_length

    from source

)

select * from renamed
