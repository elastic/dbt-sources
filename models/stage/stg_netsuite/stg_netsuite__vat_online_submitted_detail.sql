
with source as (

    select * from {{ source('raw_netsuite', 'vat_online_submitted_detail') }}

),

renamed as (

    select
        content_0,
        date_created,
        is_inactive,
        last_modified_date,
        online_filing_id,
        parent_id,
        purchase_details,
        sales_details,
        vat_online_submitted_detail_ex,
        vat_online_submitted_detail_id,
        vat_online_submitted_period_id

    from source

)

select * from renamed
