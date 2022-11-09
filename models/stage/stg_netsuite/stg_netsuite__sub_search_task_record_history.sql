
with source as (

    select * from {{ source('raw_netsuite', 'sub_search_task_record_history') }}

),

renamed as (

    select
        date_created,
        file_id,
        is_inactive,
        last_modified_date,
        parent_id,
        parent_task_record_id,
        search_id,
        sub_search_task_record_extid,
        sub_search_task_record_id,
        sub_search_task_record_name,
        task_id,
        task_status_id

    from source

)

select * from renamed
