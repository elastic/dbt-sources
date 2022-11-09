
with source as (

    select * from {{ source('raw_netsuite_sa', 'entity_status') }}

),

renamed as (

    select
        entity_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        description,
        entity_status_extid,
        isinactive,
        name,
        probability,
        read_only,
        type_0

    from source

)

select * from renamed
