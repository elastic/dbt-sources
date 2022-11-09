
with source as (

    select * from {{ source('raw_netsuite', 'online_filing_authorization') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        online_filing_authorization_ex,
        online_filing_authorization_id,
        parent_id

    from source

)

select * from renamed
