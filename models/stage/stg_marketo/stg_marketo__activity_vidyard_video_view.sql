
with source as (

    select * from {{ source('raw_marketo', 'activity_vidyard_video_view') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        embed_url,
        group_name,
        lead_id,
        percent_viewed,
        player_id,
        player_name,
        primary_attribute_value,
        primary_attribute_value_id,
        video_id,
        video_length,
        video_name,
        action_result

    from source

)

select * from renamed
