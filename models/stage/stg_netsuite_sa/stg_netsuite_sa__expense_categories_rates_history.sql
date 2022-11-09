
with source as (

    select * from {{ source('raw_netsuite_sa', 'expense_categories_rates_history') }}

),

renamed as (

    select
        expense_category_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        default_rate,
        partition_date

    from source

)

select * from renamed
