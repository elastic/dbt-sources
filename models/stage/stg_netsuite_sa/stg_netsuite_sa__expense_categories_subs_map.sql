
with source as (

    select * from {{ source('raw_netsuite_sa', 'expense_categories_subs_map') }}

),

renamed as (

    select
        expense_category_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
