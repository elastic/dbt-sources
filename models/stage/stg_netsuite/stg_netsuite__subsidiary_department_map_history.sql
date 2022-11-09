
with source as (

    select * from {{ source('raw_netsuite', 'subsidiary_department_map_history') }}

),

renamed as (

    select
        department_id,
        subsidiary_id

    from source

)

select * from renamed
