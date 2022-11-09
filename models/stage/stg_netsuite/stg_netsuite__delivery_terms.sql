
with source as (

    select * from {{ source('raw_netsuite', 'delivery_terms') }}

),

renamed as (

    select
        date_created,
        delivery_terms_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
