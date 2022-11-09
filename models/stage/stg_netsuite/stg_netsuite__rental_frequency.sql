
with source as (

    select * from {{ source('raw_netsuite', 'rental_frequency') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        rental_frequency_extid

    from source

)

select * from renamed
