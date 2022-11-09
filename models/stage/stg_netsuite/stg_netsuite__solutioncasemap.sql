
with source as (

    select * from {{ source('raw_netsuite', 'solutioncasemap') }}

),

renamed as (

    select
        date_applied,
        entity_id,
        solution_id,
        supportcase_id

    from source

)

select * from renamed
