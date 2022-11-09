
with source as (

    select * from {{ source('raw_netsuite', 'quotes') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        quotedate,
        quotesamount,
        quotesowner_id,
        quotes_extid,
        quotes_id,
        quotes_name,
        status

    from source

)

select * from renamed
