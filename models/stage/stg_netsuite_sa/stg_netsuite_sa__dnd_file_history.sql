
with source as (

    select * from {{ source('raw_netsuite_sa', 'dnd_file_history') }}

),

renamed as (

    select
        dnd_file_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        dnd_file_extid,
        file_id,
        file_name,
        is_inactive,
        last_modified_date,
        line_id,
        parent_id,
        record_id,
        record_type_script_id,
        sublist_id,
        partition_date

    from source

)

select * from renamed
