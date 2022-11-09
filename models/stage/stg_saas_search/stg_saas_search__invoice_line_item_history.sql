
with source as (

    select * from {{ source('raw_saas_search', 'invoice_line_item_history') }}

),

renamed as (

    select
        id,
        description,
        amount,
        partition_date

    from source

)

select * from renamed
