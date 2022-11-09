
with source as (

    select * from {{ source('raw_netsuite', 'process_departments_map') }}

),

renamed as (

    select
        department_id,
        process_id

    from source

)

select * from renamed
