
with source as (

    select * from {{ source('raw_netsuite', 'project_cost_categories_history') }}

),

renamed as (

    select
        category_name,
        category_type,
        expense_category_id,
        full_name,
        is_other_category,
        is_selected,
        project_cost_category_id,
        service_item_id,
        supplier_category_id,
        use_subcategories

    from source

)

select * from renamed
