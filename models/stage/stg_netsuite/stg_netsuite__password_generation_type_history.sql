
with source as (

    select * from {{ source('raw_netsuite', 'password_generation_type_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        password_generation_type_extid

    from source

)

select * from renamed
