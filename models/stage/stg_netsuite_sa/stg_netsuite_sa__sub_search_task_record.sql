
with source as (

    select * from {{ source('raw_netsuite_sa', 'sub_search_task_record') }}

),

renamed as (

    select
        sub_search_task_record_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        file_id,
        is_inactive,
        last_modified_date,
        parent_id,
        parent_task_record_id,
        search_id,
        sub_search_task_record_extid,
        sub_search_task_record_name,
        task_id,
        task_status_id

    from source

)

select * from renamed
