
with source as (

    select * from {{ source('raw_netsuite', 'ep_queue_settings_subsidiary_map_history') }}

),

renamed as (

    select
        ep_queue_settings_id,
        subsidiary_id

    from source

)

select * from renamed
