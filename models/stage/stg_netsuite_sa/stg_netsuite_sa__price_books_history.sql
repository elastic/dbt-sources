
with source as (

    select * from {{ source('raw_netsuite_sa', 'price_books_history') }}

),

renamed as (

    select
        price_book_id,
        _fivetran_deleted,
        _fivetran_synced,
        currency,
        date_deleted,
        name,
        plan_id,
        price_book_extid,
        partition_date

    from source

)

select * from renamed
