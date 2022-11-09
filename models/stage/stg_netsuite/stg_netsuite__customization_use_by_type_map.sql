
with source as (

    select * from {{ source('raw_netsuite', 'customization_use_by_type_map') }}

),

renamed as (

    select
        customization_id,
        record_type_id

    from source

)

select * from renamed
