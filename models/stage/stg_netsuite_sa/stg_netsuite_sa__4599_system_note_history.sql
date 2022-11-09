
with source as (

    select * from {{ source('raw_netsuite_sa', '4599_system_note_history') }}

),

renamed as (

    select
        n_4599_system_note_id,
        _fivetran_deleted,
        _fivetran_synced,
        action,
        audit_file,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        n_4599_system_note_extid,
        parent_id,
        user_id,
        partition_date

    from source

)

select * from renamed
