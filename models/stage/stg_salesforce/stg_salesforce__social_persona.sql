
with source as (

    select * from {{ source('raw_salesforce', 'social_persona') }}

),

renamed as (

    select
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
        r_6_source_id,
        profile_type,
        media_provider,
        listed_count,
        number_of_tweets,
        is_blacklisted,
        bio,
        real_name,
        topic_type,
        number_of_friends,
        followers,
        media_type,
        following,
        are_we_following,
        is_following_us

    from source

)

select * from renamed
