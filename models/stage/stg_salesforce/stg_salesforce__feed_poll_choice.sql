
with source as (

    select * from {{ source('raw_salesforce', 'feed_poll_choice') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        choice_body,
        created_by_id,
        created_date,
        feed_item_id,
        is_deleted,
        position,
        _fivetran_deleted

    from source

)

select * from renamed
