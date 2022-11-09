
with source as (

    select * from {{ source('raw_netsuite', 'topic') }}

),

renamed as (

    select
        description,
        is_inactive,
        long_description,
        name,
        parent_topic_id,
        topic_extid,
        topic_id

    from source

)

select * from renamed
