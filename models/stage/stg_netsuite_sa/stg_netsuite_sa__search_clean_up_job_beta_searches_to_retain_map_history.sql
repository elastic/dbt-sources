
with source as (

    select * from {{ source('raw_netsuite_sa', 'search_clean_up_job_beta_searches_to_retain_map_history') }}

),

renamed as (

    select
        customization_id,
        search_clean_up_job_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
