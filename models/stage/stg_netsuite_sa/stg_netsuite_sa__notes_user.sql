
with source as (

    select * from {{ source('raw_netsuite_sa', 'notes_user') }}

),

renamed as (

    select
        note_id,
        _fivetran_synced,
        author_id,
        comments,
        company_id,
        date_last_modified,
        direction,
        event_id,
        isinactive,
        item_id,
        name,
        note_extid,
        note_type,
        note_type_description,
        note_type_extid,
        note_type_id,
        record_id,
        record_type_id,
        system_use,
        time_entered,
        transaction_id,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
