
with source as (

    select * from {{ source('raw_netsuite_sa', 'report_task_history') }}

),

renamed as (

    select
        report_task_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        job_status_id,
        last_modified_date,
        parent_4599_custom_record_id,
        parent_id,
        report_task_extid,
        report_task_name,
        partition_date

    from source

)

select * from renamed
