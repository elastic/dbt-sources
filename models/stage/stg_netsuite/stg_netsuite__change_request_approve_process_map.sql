
with source as (

    select * from {{ source('raw_netsuite', 'change_request_approve_process_map') }}

),

renamed as (

    select
        change_request_id,
        process_id

    from source

)

select * from renamed
