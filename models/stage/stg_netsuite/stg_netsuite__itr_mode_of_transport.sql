
with source as (

    select * from {{ source('raw_netsuite', 'itr_mode_of_transport') }}

),

renamed as (

    select
        code,
        date_created,
        is_inactive,
        itr_mode_of_transport_extid,
        itr_mode_of_transport_id,
        itr_mode_of_transport_name,
        last_modified_date,
        nexus,
        parent_id

    from source

)

select * from renamed
