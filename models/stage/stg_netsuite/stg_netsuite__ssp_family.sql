
with source as (

    select * from {{ source('raw_netsuite', 'ssp_family') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        ssp_family_extid

    from source

)

select * from renamed
