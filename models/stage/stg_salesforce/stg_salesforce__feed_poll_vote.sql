
with source as (

    select * from {{ source('raw_salesforce', 'feed_poll_vote') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        choice_id,
        created_by_id,
        created_date,
        feed_item_id,
        is_deleted,
        last_modified_date,
        _fivetran_deleted

    from source

)

select * from renamed
