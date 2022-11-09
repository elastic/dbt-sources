
with source as (

    select * from {{ source('raw_salesforce', 'social_post') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        analyzer_score,
        attachment_type,
        attachment_url,
        created_by_id,
        created_date,
        currency_iso_code,
        deleted_by_id,
        handle,
        headline,
        hidden_by_id,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        liked_by,
        name,
        notes,
        owner_id,
        posted,
        provider,
        response_context_external_id,
        review_scale,
        review_score,
        system_modstamp,
        truncated_content,
        status_message,
        comment_count,
        sentiment,
        who_id,
        r_6_post_id,
        keyword_group_name,
        media_provider,
        engagement_level,
        source_tags,
        topic_type,
        r_6_topic_id,
        thread_size,
        external_post_id,
        content,
        reply_to_id,
        shares,
        likes_and_votes,
        media_type,
        topic_profile_name,
        inbound_link_count,
        assigned_to,
        r_6_source_id,
        spam_rating,
        outbound_social_account_id,
        post_priority,
        message_type,
        classification,
        recipient_type,
        reviewed_status,
        is_outbound,
        post_url,
        harvest_date,
        parent_id,
        persona_id,
        recipient,
        post_tags,
        unique_commentors,
        view_count,
        status

    from source

)

select * from renamed
