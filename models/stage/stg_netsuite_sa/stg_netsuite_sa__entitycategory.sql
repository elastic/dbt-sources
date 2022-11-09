
with source as (

    select * from {{ source('raw_netsuite_sa', 'entitycategory') }}

),

renamed as (

    select
        entity_category_id,
        entity_type,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        is_inactive,
        name,
        parent_0

    from source

)

select * from renamed
