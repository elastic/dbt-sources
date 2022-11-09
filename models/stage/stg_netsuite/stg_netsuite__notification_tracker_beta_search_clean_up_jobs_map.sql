
with source as (

    select * from {{ source('raw_netsuite', 'notification_tracker_beta_search_clean_up_jobs_map') }}

),

renamed as (

    select
        notification_tracker_beta_id,
        search_clean_up_job_beta_id

    from source

)

select * from renamed
