
with source as (

    select * from {{ source('raw_netsuite', 'ep_dummy_list') }}

),

renamed as (

    select
        date_created,
        ep_dummy_list_extid,
        ep_dummy_list_id,
        ep_dummy_list_name,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
