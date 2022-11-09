
with source as (

    select * from {{ source('raw_netsuite', 'job_resources_history') }}

),

renamed as (

    select
        job_id,
        resource_id,
        resource_role_id

    from source

)

select * from renamed
