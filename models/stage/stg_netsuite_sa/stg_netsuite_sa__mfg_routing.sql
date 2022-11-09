
with source as (

    select * from {{ source('raw_netsuite_sa', 'mfg_routing') }}

),

renamed as (

    select
        fivetran_index,
        mfg_routing_id,
        _fivetran_deleted,
        _fivetran_synced,
        bom_id,
        create_date,
        date_deleted,
        date_last_modified,
        externalid,
        is_autocalculate_lag,
        isdefault,
        isinactive,
        item_id,
        location_id,
        mfg_routing_memo,
        mfg_routing_name

    from source

)

select * from renamed
