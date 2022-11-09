
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_cost_categories') }}

),

renamed as (

    select
        project_cost_category_id,
        _fivetran_deleted,
        _fivetran_synced,
        category_name,
        category_type,
        date_deleted,
        expense_category_id,
        full_name,
        is_other_category,
        is_selected,
        service_item_id,
        supplier_category_id,
        use_subcategories

    from source

)

select * from renamed
