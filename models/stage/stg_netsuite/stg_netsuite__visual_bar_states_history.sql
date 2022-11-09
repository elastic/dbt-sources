
with source as (

    select * from {{ source('raw_netsuite', 'visual_bar_states_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        visual_bar_states_extid

    from source

)

select * from renamed
