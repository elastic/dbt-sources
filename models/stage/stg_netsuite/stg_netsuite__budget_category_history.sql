
with source as (

    select * from {{ source('raw_netsuite', 'budget_category_history') }}

),

renamed as (

    select
        budget_category_id,
        isinactive,
        is_global,
        name

    from source

)

select * from renamed
