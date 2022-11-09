
with source as (

    select * from {{ source('raw_netsuite', 'annual_revenue_ranges_history') }}

),

renamed as (

    select
        annual_revenue_ranges_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
