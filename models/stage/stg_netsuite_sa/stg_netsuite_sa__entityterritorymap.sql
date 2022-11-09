
with source as (

    select * from {{ source('raw_netsuite_sa', 'entityterritorymap') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        entity_id,
        territory_id,
        fivetran_index

    from source

)

select * from renamed
