
with source as (

    select * from {{ source('raw_netsuite_sa', 'vat_online_submitted_detail_history') }}

),

renamed as (

    select
        vat_online_submitted_detail_id,
        _fivetran_deleted,
        _fivetran_synced,
        content_0,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        online_filing_id,
        parent_id,
        purchase_details,
        sales_details,
        vat_online_submitted_detail_ex,
        vat_online_submitted_period_id,
        partition_date

    from source

)

select * from renamed
