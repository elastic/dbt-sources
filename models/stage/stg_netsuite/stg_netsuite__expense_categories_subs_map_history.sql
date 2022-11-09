
with source as (

    select * from {{ source('raw_netsuite', 'expense_categories_subs_map_history') }}

),

renamed as (

    select
        expense_category_id,
        subsidiary_id

    from source

)

select * from renamed
