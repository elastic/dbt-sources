
with source as (

    select * from {{ source('raw_netsuite', 'online_filing') }}

),

renamed as (

    select
        accounting_book_id,
        data_0,
        date_created,
        is_inactive,
        last_modified_date,
        meta_data,
        nexus,
        online_filing_extid,
        online_filing_id,
        parent_id,
        result,
        status,
        subsidiary_id,
        type_0,
        user_id,
        vrn

    from source

)

select * from renamed
