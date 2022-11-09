
with source as (

    select * from {{ source('raw_netsuite', 'customization_cleanup_exclusions_map') }}

),

renamed as (

    select
        cleanup_exclusions_id,
        customization_id

    from source

)

select * from renamed
