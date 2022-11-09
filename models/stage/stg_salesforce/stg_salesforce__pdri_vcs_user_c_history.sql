
with source as (

    select * from {{ source('raw_salesforce', 'pdri_vcs_user_c_history') }}

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
        pdri_username_c,
        pdri_vcs_repo_c,
        system_modstamp

    from source

)

select * from renamed
