
with source as (

    select * from {{ source('raw_netsuite', 'account_subsidiary_map') }}

),

renamed as (

    select
        account_id,
        subsidiary_id

    from source

)

select * from renamed
