
with source as (

    select * from {{ source('raw_netsuite', 'segment_sourcing_methods') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        segment_sourcing_methods_extid

    from source

)

select * from renamed
