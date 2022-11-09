
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_job') }}

),

renamed as (

    select
        taf_job_id,
        _fivetran_deleted,
        _fivetran_synced,
        data_0,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        process_messages,
        status_id,
        taf_job_extid

    from source

)

select * from renamed
