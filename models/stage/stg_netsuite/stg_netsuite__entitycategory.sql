
with source as (

    select * from {{ source('raw_netsuite', 'entitycategory') }}

),

renamed as (

    select
        entity_category_id,
        entity_type,
        is_inactive,
        name,
        parent_0

    from source

)

select * from renamed
