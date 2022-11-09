
with source as (

    select * from {{ source('raw_salesforce', 'content_distribution_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        content_document_id,
        content_download_url,
        content_version_id,
        created_by_id,
        created_date,
        distribution_public_url,
        expiry_date,
        first_view_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_view_date,
        name,
        owner_id,
        password,
        pdf_download_url,
        preferences_allow_original_download,
        preferences_allow_pdfdownload,
        preferences_allow_view_in_browser,
        preferences_expires,
        preferences_link_latest_version,
        preferences_notify_on_visit,
        preferences_notify_rndtn_complete,
        preferences_password_required,
        related_record_id,
        system_modstamp,
        view_count,
        _fivetran_deleted

    from source

)

select * from renamed
