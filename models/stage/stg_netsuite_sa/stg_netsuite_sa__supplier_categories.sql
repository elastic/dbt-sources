
with source as (

    select * from {{ source('raw_netsuite_sa', 'supplier_categories') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        category_name,
        date_deleted,
        supplier_category_id

    from source

)

select * from renamed
