
with source as (

    select * from {{ source('raw_netsuite_sa', 'saved_search_to_file_cabinet_') }}

),

renamed as (

    select
        saved_search_to_file_cabine_id,
        _fivetran_deleted,
        _fivetran_synced,
        available_without_login,
        date_created,
        date_deleted,
        file_location_folder_id,
        file_type_id,
        is_inactive,
        last_modified_date,
        order_of_operation,
        overwrite_file,
        parent_id,
        pdf_template_id,
        saved_search_name_id,
        saved_search_to_file_cabine_ex,
        saved_search_to_file_cabine_na

    from source

)

select * from renamed
