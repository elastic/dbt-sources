
with source as (

    select * from {{ source('raw_netsuite', 'customization_parent_map') }}

),

renamed as (

    select
        customization2_id,
        customization_id

    from source

)

select * from renamed
