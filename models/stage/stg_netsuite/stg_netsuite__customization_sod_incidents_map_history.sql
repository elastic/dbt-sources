
with source as (

    select * from {{ source('raw_netsuite', 'customization_sod_incidents_map_history') }}

),

renamed as (

    select
        change_log_id,
        customization_id

    from source

)

select * from renamed
