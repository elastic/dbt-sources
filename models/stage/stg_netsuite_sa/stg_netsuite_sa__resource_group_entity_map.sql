
with source as (

    select * from {{ source('raw_netsuite_sa', 'resource_group_entity_map') }}

),

renamed as (

    select
        entity_id,
        group_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
