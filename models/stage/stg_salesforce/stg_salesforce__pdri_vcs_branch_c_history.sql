
with source as (

    select * from {{ source('raw_salesforce', 'pdri_vcs_branch_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pdri_branch_hash_id_c,
        pdri_managed_instance_guid_c,
        pdri_vcs_repo_c,
        system_modstamp,
        pdri_branch_name_c

    from source

)

select * from renamed
