
with source as (

    select * from {{ source('raw_netsuite', 'sales_territories') }}

),

renamed as (

    select
        date_last_modified,
        description,
        isinactive,
        name,
        priority,
        sales_territory_id

    from source

)

select * from renamed
