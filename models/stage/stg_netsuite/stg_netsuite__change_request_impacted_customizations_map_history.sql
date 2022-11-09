
with source as (

    select * from {{ source('raw_netsuite', 'change_request_impacted_customizations_map_history') }}

),

renamed as (

    select
        change_request_id,
        customization_id

    from source

)

select * from renamed
