
with source as (

    select * from {{ source('raw_netsuite', 'configuration_and_stats_administrators_map_history') }}

),

renamed as (

    select
        configuration_and_stats_id,
        employee_id

    from source

)

select * from renamed
