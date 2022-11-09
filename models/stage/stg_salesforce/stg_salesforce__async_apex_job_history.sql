
with source as (

    select * from {{ source('raw_salesforce', 'async_apex_job_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        apex_class_id,
        completed_date,
        created_by_id,
        created_date,
        extended_status,
        job_items_processed,
        job_type,
        last_processed,
        last_processed_offset,
        method_name,
        number_of_errors,
        parent_job_id,
        status,
        total_job_items,
        _fivetran_deleted

    from source

)

select * from renamed
