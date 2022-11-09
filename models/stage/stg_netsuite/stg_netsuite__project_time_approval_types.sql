
with source as (

    select * from {{ source('raw_netsuite', 'project_time_approval_types') }}

),

renamed as (

    select
        description,
        project_time_approval_type_id

    from source

)

select * from renamed
