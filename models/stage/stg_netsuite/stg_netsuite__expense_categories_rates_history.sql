
with source as (

    select * from {{ source('raw_netsuite', 'expense_categories_rates_history') }}

),

renamed as (

    select
        default_rate,
        expense_category_id,
        subsidiary_id

    from source

)

select * from renamed
