
with source as (

    select * from {{ source('raw_saas_search', 'invoice_line_item') }}

),

renamed as (

    select
        id,
        description,
        amount

    from source

)

select * from renamed
