
with source as (

    select * from {{ source('raw_netsuite', 'relationship_list_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        relationship_list_extid

    from source

)

select * from renamed
