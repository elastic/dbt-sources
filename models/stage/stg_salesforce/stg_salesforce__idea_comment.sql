
with source as (

    select * from {{ source('raw_salesforce', 'idea_comment') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        comment_body,
        community_id,
        created_by_id,
        created_date,
        creator_full_photo_url,
        creator_name,
        creator_small_photo_url,
        idea_id,
        is_deleted,
        is_html,
        system_modstamp,
        up_votes

    from source

)

select * from renamed
