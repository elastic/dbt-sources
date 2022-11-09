
with source as (

    select * from {{ source('raw_netsuite', 'china_vendor_purpose_codes') }}

),

renamed as (

    select
        china_vendor_purpose_codes_ext,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
