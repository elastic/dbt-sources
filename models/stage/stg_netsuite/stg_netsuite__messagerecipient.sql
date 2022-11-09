
with source as (

    select * from {{ source('raw_netsuite', 'messagerecipient') }}

),

renamed as (

    select
        entity_id,
        message_id

    from source

)

select * from renamed
