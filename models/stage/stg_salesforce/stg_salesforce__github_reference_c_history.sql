
with source as (

    select * from {{ source('raw_salesforce', 'github_reference_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        assignees_c,
        closed_at_c,
        created_at_c,
        created_by_c,
        created_by_id,
        created_date,
        currency_iso_code,
        github_url_c,
        is_deleted,
        issue_number_c,
        labels_c,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        mapped_status_c,
        name,
        owner_id,
        private_c,
        repo_name_c,
        status_c,
        subject_c,
        sync_failed_c,
        system_modstamp,
        updated_at_c,
        customer_visible_c,
        type_c,
        org_c,
        org_repo_c

    from source

)

select * from renamed
