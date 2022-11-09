
with source as (

    select * from {{ source('raw_netsuite_sa', 'quotes_history') }}

),

renamed as (

    select
        quotes_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        quotedate,
        quotes_extid,
        quotes_name,
        quotesamount,
        quotesowner_id,
        status,
        partition_date

    from source

)

select * from renamed
