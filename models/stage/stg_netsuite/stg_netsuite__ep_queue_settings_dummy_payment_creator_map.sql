
with source as (

    select * from {{ source('raw_netsuite', 'ep_queue_settings_dummy_payment_creator_map') }}

),

renamed as (

    select
        ep_dummy_list_id,
        ep_queue_settings_id

    from source

)

select * from renamed
