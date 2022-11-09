
with source as (

    select * from {{ source('raw_netsuite_sa', 'pending_role_evaluations') }}

),

renamed as (

    select
        pending_role_evaluations_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        pending_role_evaluations_extid,
        role_to_update_id,
        status_id

    from source

)

select * from renamed
