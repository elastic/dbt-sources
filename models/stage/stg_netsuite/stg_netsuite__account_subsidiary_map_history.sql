
with source as (

    select * from {{ source('raw_netsuite', 'account_subsidiary_map_history') }}

),

renamed as (

    select
        account_id,
        subsidiary_id

    from source

)

select * from renamed
