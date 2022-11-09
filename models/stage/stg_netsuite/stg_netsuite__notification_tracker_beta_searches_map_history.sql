
with source as (

    select * from {{ source('raw_netsuite', 'notification_tracker_beta_searches_map_history') }}

),

renamed as (

    select
        customization_id,
        notification_tracker_beta_id

    from source

)

select * from renamed
