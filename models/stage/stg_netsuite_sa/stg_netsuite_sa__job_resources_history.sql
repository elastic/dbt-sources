
with source as (

    select * from {{ source('raw_netsuite_sa', 'job_resources_history') }}

),

renamed as (

    select
        job_id,
        resource_id,
        resource_role_id,
        _fivetran_synced,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
