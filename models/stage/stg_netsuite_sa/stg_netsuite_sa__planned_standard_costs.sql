
with source as (

    select * from {{ source('raw_netsuite_sa', 'planned_standard_costs') }}

),

renamed as (

    select
        planned_standard_cost_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        date_last_modified,
        item_id,
        location_id,
        memo,
        standard_cost_version_id

    from source

)

select * from renamed
