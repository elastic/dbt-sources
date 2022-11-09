
with source as (

    select * from {{ source('raw_netsuite', 'location_costing_groups') }}

),

renamed as (

    select
        currency_id,
        location_costing_group_id,
        location_costing_group_name,
        memo

    from source

)

select * from renamed
