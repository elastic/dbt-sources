
with source as (

    select * from {{ source('raw_netsuite', 'distribution_networks') }}

),

renamed as (

    select
        date_created,
        date_last_modified,
        distribution_network_extid,
        distribution_network_id,
        is_inactive,
        memo,
        network_name

    from source

)

select * from renamed
