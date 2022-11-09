
with source as (

    select * from {{ source('raw_netsuite', 'expense_categories_subs_map') }}

),

renamed as (

    select
        expense_category_id,
        subsidiary_id

    from source

)

select * from renamed
