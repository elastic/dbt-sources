
with source as (

    select * from {{ source('raw_netsuite', 'mfg_routing_history') }}

),

renamed as (

    select
        bom_id,
        create_date,
        date_last_modified,
        externalid,
        isdefault,
        isinactive,
        is_autocalculate_lag,
        item_id,
        location_id,
        mfg_routing_id,
        mfg_routing_memo,
        mfg_routing_name

    from source

)

select * from renamed
