
with source as (

    select * from {{ source('raw_netsuite', 'process_process_audience_map') }}

),

renamed as (

    select
        process_id,
        role_id

    from source

)

select * from renamed
