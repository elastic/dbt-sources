
with source as (

    select * from {{ source('raw_salesforce', 'knowledge_article_version_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        archived_by_id,
        archived_date,
        article_archived_by_id,
        article_archived_date,
        article_case_attach_count,
        article_created_by_id,
        article_created_date,
        article_number,
        article_total_view_count,
        article_type,
        assigned_by_id,
        assigned_to_id,
        assignment_date,
        assignment_due_date,
        assignment_note,
        created_by_id,
        created_date,
        currency_iso_code,
        first_published_date,
        is_deleted,
        is_latest_version,
        is_visible_in_app,
        is_visible_in_csp,
        is_visible_in_pkb,
        is_visible_in_prm,
        knowledge_article_id,
        language,
        last_modified_by_id,
        last_modified_date,
        last_published_date,
        owner_id,
        publish_status,
        source_id,
        summary,
        system_modstamp,
        title,
        url_name,
        version_number,
        migrated_to_from_article_version,
        _fivetran_deleted

    from source

)

select * from renamed
