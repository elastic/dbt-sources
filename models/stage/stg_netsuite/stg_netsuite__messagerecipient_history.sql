
with source as (

    select * from {{ source('raw_netsuite', 'messagerecipient_history') }}

),

renamed as (

    select
        entity_id,
        message_id

    from source

)

select * from renamed
