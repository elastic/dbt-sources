
with source as (

    select * from {{ source('raw_netsuite', 'taf_job_history') }}

),

renamed as (

    select
        data_0,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        process_messages,
        status_id,
        taf_job_extid,
        taf_job_id

    from source

)

select * from renamed
