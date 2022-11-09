
with source as (

    select * from {{ source('raw_salesforce', 'content_version') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        checksum,
        content_body_id,
        content_document_id,
        content_location,
        content_modified_by_id,
        content_modified_date,
        content_size,
        content_url,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        external_data_source_id,
        external_document_info_1,
        external_document_info_2,
        featured_content_boost,
        featured_content_date,
        file_extension,
        file_type,
        first_publish_location_id,
        is_asset_enabled,
        is_deleted,
        is_latest,
        is_major_version,
        language,
        last_modified_by_id,
        last_modified_date,
        negative_rating_count,
        network_id,
        origin,
        owner_id,
        path_on_client,
        positive_rating_count,
        publish_status,
        rating_count,
        reason_for_change,
        sharing_option,
        sharing_privacy,
        system_modstamp,
        tag_csv,
        text_preview,
        title,
        version_number,
        is_conga_file_c,
        _fivetran_deleted,
        lexmagicmover_legacy_note_converted_last_modified_date_time_c,
        lexmagicmover_legacy_note_converted_id_c,
        lexmagicmover_legacy_note_converted_last_modified_date_c,
        lexmagicmover_legacy_note_converted_owner_id_c,
        lexmagicmover_legacy_note_converted_date_c,
        lexmagicmover_legacy_note_converted_parent_id_c,
        tspc_ref_eid_c

    from source

)

select * from renamed
