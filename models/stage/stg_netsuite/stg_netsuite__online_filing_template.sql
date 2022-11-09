
with source as (

    select * from {{ source('raw_netsuite', 'online_filing_template') }}

),

renamed as (

    select
        content_0,
        date_created,
        is_inactive,
        last_modified_date,
        online_filing_template_extid,
        online_filing_template_id,
        online_filing_template_name,
        parent_id,
        type_0

    from source

)

select * from renamed
