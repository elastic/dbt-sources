
with source as (

    select * from {{ source('raw_netsuite', 'save_ss_data_to_file_cabinet') }}

),

renamed as (

    select
        available_without_login,
        date_created,
        folder_id,
        is_inactive,
        last_modified_date,
        order_0,
        overwrite,
        parent_id,
        saved_search_id,
        save_ss_data_to_file_cabine_ex,
        save_ss_data_to_file_cabine_id

    from source

)

select * from renamed
