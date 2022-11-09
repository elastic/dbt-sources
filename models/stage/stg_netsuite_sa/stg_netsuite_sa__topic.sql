
with source as (

    select * from {{ source('raw_netsuite_sa', 'topic') }}

),

renamed as (

    select
        topic_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        description,
        is_inactive,
        long_description,
        name,
        parent_topic_id,
        topic_extid

    from source

)

select * from renamed
