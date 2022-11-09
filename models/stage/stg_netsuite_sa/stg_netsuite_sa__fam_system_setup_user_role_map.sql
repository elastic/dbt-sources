
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_system_setup_user_role_map') }}

),

renamed as (

    select
        fam_system_setup_id,
        role_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
