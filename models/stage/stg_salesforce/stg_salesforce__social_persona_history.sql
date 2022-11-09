
with source as (

    select * from {{ source('raw_salesforce', 'social_persona_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        author_labels,
        created_by_id,
        created_date,
        currency_iso_code,
        external_id,
        external_picture_url,
        influencer_score,
        is_default,
        is_deleted,
        is_verified,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        parent_id,
        profile_url,
        provider,
        source_app,
        system_modstamp,
        avatar_url,
        are_we_following,
        bio,
        followers,
        following,
        is_blacklisted,
        is_following_us,
        listed_count,
        media_provider,
        media_type,
        number_of_friends,
        number_of_tweets,
        profile_type,
        r_6_source_id,
        real_name,
        topic_type

    from source

)

select * from renamed
