
with source as (

    select * from {{ source('raw_netsuite_sa', 'price_books') }}

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
        price_book_extid

    from source

)

select * from renamed
