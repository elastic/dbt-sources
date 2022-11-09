
with source as (

    select * from {{ source('raw_netsuite', 'change_request_affected_subsidiaries_map_history') }}

),

renamed as (

    select
        change_request_id,
        process_id

    from source

)

select * from renamed
