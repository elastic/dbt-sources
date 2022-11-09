
with source as (

    select * from {{ source('raw_netsuite', 'apm_setup_roles_access_history') }}

),

renamed as (

    select
        apm_setup_ra_role_id,
        apm_setup_ra_top_10,
        apm_setup_roles_access_extid,
        apm_setup_roles_access_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
