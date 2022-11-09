
with source as (

    select * from {{ source('raw_netsuite_sa', 'entitycategory_history') }}

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
        parent_0,
        partition_date

    from source

)

select * from renamed
