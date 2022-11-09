
with source as (

    select * from {{ source('raw_salesforce', 'lexmagicmover_namnote_converted_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lexmagicmover_legacy_note_converted_date_c,
        lexmagicmover_legacy_note_converted_id_c,
        lexmagicmover_legacy_note_converted_last_modified_date_c,
        lexmagicmover_legacy_note_converted_owner_id_c,
        lexmagicmover_legacy_note_converted_parent_id_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
