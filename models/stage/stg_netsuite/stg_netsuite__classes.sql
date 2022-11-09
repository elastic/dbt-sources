
with source as (

    select * from {{ source('raw_netsuite', 'classes') }}

),

renamed as (

    select
        class_extid,
        class_id,
        date_last_modified,
        full_name,
        isinactive,
        name,
        parent_id

    from source

)

select * from renamed
