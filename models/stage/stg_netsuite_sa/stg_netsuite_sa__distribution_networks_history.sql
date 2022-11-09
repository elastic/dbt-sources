
with source as (

    select * from {{ source('raw_netsuite_sa', 'distribution_networks_history') }}

),

renamed as (

    select
        distribution_network_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        date_last_modified,
        distribution_network_extid,
        is_inactive,
        memo,
        network_name,
        partition_date

    from source

)

select * from renamed
