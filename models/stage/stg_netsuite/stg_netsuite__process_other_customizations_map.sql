
with source as (

    select * from {{ source('raw_netsuite', 'process_other_customizations_map') }}

),

renamed as (

    select
        customization_id,
        process_id

    from source

)

select * from renamed
