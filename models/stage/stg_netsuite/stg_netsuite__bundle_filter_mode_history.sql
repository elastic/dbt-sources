
with source as (

    select * from {{ source('raw_netsuite', 'bundle_filter_mode_history') }}

),

renamed as (

    select
        bundle_filter_mode_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
