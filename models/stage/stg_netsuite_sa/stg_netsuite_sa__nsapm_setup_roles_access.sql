
with source as (

    select * from {{ source('raw_netsuite_sa', 'nsapm_setup_roles_access') }}

),

renamed as (

    select
        nsapm_setup_roles_access_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nsapm_setup_ra_role_id,
        nsapm_setup_ra_top_10,
        nsapm_setup_roles_access_extid,
        parent_id

    from source

)

select * from renamed
