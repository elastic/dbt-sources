
with source as (

    select * from {{ source('raw_netsuite', 'license_type') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        license_type_extid,
        list_id,
        list_item_name

    from source

)

select * from renamed
