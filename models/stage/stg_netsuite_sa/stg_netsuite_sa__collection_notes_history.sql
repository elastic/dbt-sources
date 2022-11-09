
with source as (

    select * from {{ source('raw_netsuite_sa', 'collection_notes_history') }}

),

renamed as (

    select
        collection_notes_id,
        _fivetran_deleted,
        _fivetran_synced,
        collection_notes_extid,
        customer_id,
        date_created,
        date_deleted,
        entered_by_employee_id,
        entry_date,
        is_inactive,
        last_modified_date,
        note,
        parent_id,
        partition_date

    from source

)

select * from renamed
