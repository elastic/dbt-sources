
with source as (

    select * from {{ source('raw_netsuite', 'job_types') }}

),

renamed as (

    select
        isinactive,
        job_type_extid,
        job_type_id,
        name,
        parent_id

    from source

)

select * from renamed
