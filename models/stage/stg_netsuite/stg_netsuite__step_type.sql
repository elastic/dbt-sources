
with source as (

    select * from {{ source('raw_netsuite', 'step_type') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        step_type_extid

    from source

)

select * from renamed
