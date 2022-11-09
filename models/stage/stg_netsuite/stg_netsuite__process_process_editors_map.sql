
with source as (

    select * from {{ source('raw_netsuite', 'process_process_editors_map') }}

),

renamed as (

    select
        employee_id,
        process_id

    from source

)

select * from renamed