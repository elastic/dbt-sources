
with source as (

    select * from {{ source('raw_netsuite_sa', 'activities') }}

),

renamed as (

    select
        _fivetran_id,
        activity_id,
        _fivetran_synced,
        access_level,
        assigned_to_id,
        case_id,
        contact_id,
        date_0,
        date_completed,
        date_created,
        date_last_modified,
        entity_id,
        memo,
        opportunity_id,
        owner_id,
        status,
        title,
        type_0,
        fivetran_index,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
