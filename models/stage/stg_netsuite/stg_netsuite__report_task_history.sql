
with source as (

    select * from {{ source('raw_netsuite', 'report_task_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        job_status_id,
        last_modified_date,
        parent_4599_custom_record_id,
        parent_id,
        report_task_extid,
        report_task_id,
        report_task_name

    from source

)

select * from renamed
