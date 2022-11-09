
with source as (

    select * from {{ source('raw_netsuite', 'ep_output_file_encoding') }}

),

renamed as (

    select
        date_created,
        ep_output_file_encoding_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
