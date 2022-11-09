
with source as (

    select * from {{ source('raw_netsuite_sa', 'save_ss_data_to_file_cabinet_history') }}

),

renamed as (

    select
        save_ss_data_to_file_cabine_id,
        _fivetran_deleted,
        _fivetran_synced,
        available_without_login,
        date_created,
        date_deleted,
        folder_id,
        is_inactive,
        last_modified_date,
        order_0,
        overwrite,
        parent_id,
        save_ss_data_to_file_cabine_ex,
        saved_search_id,
        partition_date

    from source

)

select * from renamed
