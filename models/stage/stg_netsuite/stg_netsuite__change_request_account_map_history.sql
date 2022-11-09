
with source as (

    select * from {{ source('raw_netsuite', 'change_request_account_map_history') }}

),

renamed as (

    select
        account_id,
        change_request_id

    from source

)

select * from renamed
