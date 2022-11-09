
with source as (

    select * from {{ source('raw_netsuite', 'change_request_proposed_processes_map') }}

),

renamed as (

    select
        change_request_id,
        process_id

    from source

)

select * from renamed
