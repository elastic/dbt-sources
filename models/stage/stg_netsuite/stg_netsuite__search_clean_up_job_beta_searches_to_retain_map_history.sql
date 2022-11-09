
with source as (

    select * from {{ source('raw_netsuite', 'search_clean_up_job_beta_searches_to_retain_map_history') }}

),

renamed as (

    select
        customization_id,
        search_clean_up_job_beta_id

    from source

)

select * from renamed
