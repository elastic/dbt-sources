
with source as (

    select * from {{ source('raw_netsuite', 'file_drag_and_drop_record_typ') }}

),

renamed as (

    select
        date_created,
        file_drag_and_drop_record_t_ex,
        file_drag_and_drop_record_t_id,
        folder_id,
        folder_name,
        folder_pattern,
        is_inactive,
        last_modified_date,
        parent_id,
        record_type_id,
        record_type_script_id,
        sublists,
        use_folder_pattern,
        x_create_unique_folder_for_ea

    from source

)

select * from renamed
