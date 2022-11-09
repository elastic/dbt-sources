
with source as (

    select * from {{ source('raw_salesforce', 'case_github_references_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        case_c,
        created_by_id,
        created_date,
        currency_iso_code,
        github_reference_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        subscription_c,
        system_modstamp,
        case_git_hub_link_c,
        git_hub_url_c,
        status_c,
        updated_at_c,
        org_repo_c

    from source

)

select * from renamed
