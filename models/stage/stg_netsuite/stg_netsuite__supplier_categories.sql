
with source as (

    select * from {{ source('raw_netsuite', 'supplier_categories') }}

),

renamed as (

    select
        category_name,
        supplier_category_id

    from source

)

select * from renamed
