
with source as (

    select * from {{ source('raw_salesforce', 'support_article_kav_history') }}

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
        details_c,
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
        products_c,
        public_attachment_content_type_s,
        public_attachment_length_s,
        public_attachment_name_s,
        publish_status,
        source_id,
        summary,
        system_modstamp,
        title,
        url_name,
        version_c,
        version_number,
        zendesk_migrated_author_c,
        customer_portal_url_c,
        zendesk_migrated_author_name_c,
        migrated_to_from_article_version,
        component_c,
        elastic_deployment_type_c,
        platform_type_c,
        solution_c,
        _fivetran_deleted,
        dream_machine_url_c

    from source

)

select * from renamed
