
with source as (

    select * from {{ source('raw_netsuite', 'ep_queue_settings_subsidiary_map') }}

),

renamed as (

    select
        ep_queue_settings_id,
        subsidiary_id

    from source

)

select * from renamed
