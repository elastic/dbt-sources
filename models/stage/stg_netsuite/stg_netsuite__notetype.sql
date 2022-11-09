
with source as (

    select * from {{ source('raw_netsuite', 'notetype') }}

),

renamed as (

    select
        date_last_modified,
        description,
        is_inactive,
        note_type,
        note_type_extid,
        note_type_id

    from source

)

select * from renamed
