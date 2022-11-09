
with source as (

    select * from {{ source('raw_netsuite_sa', 'notification_tracker_beta_search_clean_up_jobs_map_history') }}

),

renamed as (

    select
        notification_tracker_beta_id,
        search_clean_up_job_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
