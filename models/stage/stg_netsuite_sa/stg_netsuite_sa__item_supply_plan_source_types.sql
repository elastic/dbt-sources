
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_supply_plan_source_types') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        name,
        type_id

    from source

)

select * from renamed
