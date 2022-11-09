
with source as (

    select * from {{ source('raw_netsuite_sa', 'budget') }}

),

renamed as (

    select
        budget_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_id,
        accounting_book_id,
        accounting_period_id,
        amount,
        budget_date,
        category_id,
        class_id,
        customer_id,
        date_deleted,
        department_id,
        item_id,
        location_id,
        subsidiary_id

    from source

)

select * from renamed
