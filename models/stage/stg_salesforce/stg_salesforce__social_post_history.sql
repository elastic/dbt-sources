
with source as (

    select * from {{ source('raw_salesforce', 'social_post_history') }}

),

renamed as (

    select
        partitiontime,
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
        id,
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
        assigned_to,
        classification,
        comment_count,
        content,
        engagement_level,
        external_post_id,
        harvest_date,
        inbound_link_count,
        is_outbound,
        keyword_group_name,
        likes_and_votes,
        media_provider,
        media_type,
        message_type,
        outbound_social_account_id,
        parent_id,
        persona_id,
        post_priority,
        post_tags,
        post_url,
        r_6_post_id,
        r_6_source_id,
        r_6_topic_id,
        recipient,
        recipient_type,
        reply_to_id,
        reviewed_status,
        sentiment,
        shares,
        source_tags,
        spam_rating,
        status,
        status_message,
        thread_size,
        topic_profile_name,
        topic_type,
        unique_commentors,
        view_count,
        who_id

    from source

)

select * from renamed
