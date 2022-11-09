
with source as (

    select * from {{ source('raw_salesforce', 'vidyard_video_view_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        vidyard_date_c,
        vidyard_seconds_watched_c,
        vidyard_uuid_c,
        vidyard_view_id_c,
        vidyard_views_c,
        vy_report_group_owner_c,
        vidyard_contact_c,
        vidyard_custom_attributes_c,
        vidyard_embed_url_c,
        vidyard_group_name_c,
        vidyard_id_c,
        vidyard_lead_c,
        vidyard_player_chapter_c,
        vidyard_player_name_c,
        vidyard_player_uuid_c,
        vidyard_user_c,
        vidyard_video_amount_watched_c,
        vidyard_video_id_c,
        vidyard_video_uuid_c

    from source

)

select * from renamed
