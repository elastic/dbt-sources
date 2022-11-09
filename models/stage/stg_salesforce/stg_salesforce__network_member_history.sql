
with source as (

    select * from {{ source('raw_salesforce', 'network_member_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        default_group_notification_frequency,
        digest_frequency,
        last_chatter_activity_date,
        member_id,
        network_id,
        preferences_dis_comment_after_like_email,
        preferences_dis_mentions_comment_email,
        preferences_dis_prof_post_comment_email,
        preferences_disable_all_feeds_email,
        preferences_disable_bookmark_email,
        preferences_disable_case_contact_email,
        preferences_disable_change_comment_email,
        preferences_disable_direct_message_email,
        preferences_disable_endorsement_email,
        preferences_disable_followers_email,
        preferences_disable_item_flagged_email,
        preferences_disable_later_comment_email,
        preferences_disable_like_email,
        preferences_disable_mentions_post_email,
        preferences_disable_message_email,
        preferences_disable_pending_review_email,
        preferences_disable_profile_post_email,
        preferences_disable_share_post_email,
        reputation_points,
        system_modstamp,
        preferences_disable_best_answer_email

    from source

)

select * from renamed
