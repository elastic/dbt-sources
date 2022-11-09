
with source as (

    select * from {{ source('raw_netsuite', 'entity_status_history') }}

),

renamed as (

    select
        comment_0,
        date_0,
        entity_id,
        entity_status_new_id,
        entity_status_old_id

    from source

)

select * from renamed
