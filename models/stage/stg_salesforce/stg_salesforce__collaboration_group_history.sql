
with source as (

    select * from {{ source('raw_salesforce', 'collaboration_group_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        announcement_id,
        banner_photo_url,
        can_have_guests,
        collaboration_type,
        created_by_id,
        created_date,
        description,
        full_photo_url,
        group_email,
        has_private_fields_access,
        information_body,
        information_title,
        is_auto_archive_disabled,
        is_broadcast,
        last_feed_modified_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        medium_photo_url,
        member_count,
        name,
        network_id,
        owner_id,
        small_photo_url,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
