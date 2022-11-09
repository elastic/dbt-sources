
with source as (

    select * from {{ source('raw_netsuite', 'budget_category') }}

),

renamed as (

    select
        budget_category_id,
        is_global,
        isinactive,
        name

    from source

)

select * from renamed
