
with source as (

    select * from {{ source('raw_netsuite_sa', 'file_drag_and_drop_record_typ') }}

),

renamed as (

    select
        file_drag_and_drop_record_t_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        file_drag_and_drop_record_t_ex,
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
