
with source as (

    select * from {{ source('raw_netsuite_sa', 'notetype') }}

),

renamed as (

    select
        note_type_id,
        _fivetran_synced,
        date_last_modified,
        description,
        is_inactive,
        note_type,
        note_type_extid,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
