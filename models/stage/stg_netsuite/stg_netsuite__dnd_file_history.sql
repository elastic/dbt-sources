
with source as (

    select * from {{ source('raw_netsuite', 'dnd_file_history') }}

),

renamed as (

    select
        date_created,
        dnd_file_extid,
        dnd_file_id,
        file_id,
        file_name,
        is_inactive,
        last_modified_date,
        line_id,
        parent_id,
        record_id,
        record_type_script_id,
        sublist_id

    from source

)

select * from renamed
