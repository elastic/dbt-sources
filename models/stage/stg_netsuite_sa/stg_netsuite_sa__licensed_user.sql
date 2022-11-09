
with source as (

    select * from {{ source('raw_netsuite_sa', 'licensed_user') }}

),

renamed as (

    select
        licensed_user_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        end_date,
        is_inactive,
        last_modified_date,
        license_manager_id,
        license_type_id,
        licensed_user_extid,
        parent_id,
        user_id,
        uar_owner,
        uar_admin,
        uar_additional_reviewer,
        uar_auditor

    from source

)

select * from renamed
