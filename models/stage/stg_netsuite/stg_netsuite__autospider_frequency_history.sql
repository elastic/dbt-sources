
with source as (

    select * from {{ source('raw_netsuite', 'autospider_frequency_history') }}

),

renamed as (

    select
        autospider_frequency_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
