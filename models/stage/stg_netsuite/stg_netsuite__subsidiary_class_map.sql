
with source as (

    select * from {{ source('raw_netsuite', 'subsidiary_class_map') }}

),

renamed as (

    select
        class_id,
        subsidiary_id

    from source

)

select * from renamed
