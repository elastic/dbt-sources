
with source as (

    select * from {{ source('raw_netsuite', 'process_forms_map') }}

),

renamed as (

    select
        customization_id,
        process_id

    from source

)

select * from renamed
