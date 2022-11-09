
with source as (

    select * from {{ source('raw_netsuite', 'install_base') }}

),

renamed as (

    select
        date_created,
        install_base_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
