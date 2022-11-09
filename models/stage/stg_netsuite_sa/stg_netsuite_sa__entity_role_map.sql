
with source as (

    select * from {{ source('raw_netsuite_sa', 'entity_role_map') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        contact_id,
        date_deleted,
        entity_id,
        role_id

    from source

)

select * from renamed
