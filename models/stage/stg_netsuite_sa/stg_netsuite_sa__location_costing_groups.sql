
with source as (

    select * from {{ source('raw_netsuite_sa', 'location_costing_groups') }}

),

renamed as (

    select
        location_costing_group_id,
        _fivetran_deleted,
        _fivetran_synced,
        currency_id,
        date_deleted,
        location_costing_group_name,
        memo

    from source

)

select * from renamed
