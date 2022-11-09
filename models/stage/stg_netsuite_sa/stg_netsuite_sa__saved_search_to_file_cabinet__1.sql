
with source as (

    select * from {{ source('raw_netsuite_sa', 'saved_search_to_file_cabinet__1') }}

),

renamed as (

    select
        saved_search_to_file_cabine_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        saved_search_to_file_cabine_ex,
        search_config_record_id,
        search_execution_date,
        search_execution_time

    from source

)

select * from renamed
