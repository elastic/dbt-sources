
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_supply_plans') }}

),

renamed as (

    select
        fivetran_index,
        item_supply_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        create_date,
        date_deleted,
        date_last_modified,
        item_id,
        last_modified_date,
        location_id,
        memo,
        subsidiary_id

    from source

)

select * from renamed
