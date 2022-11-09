
with source as (

    select * from {{ source('raw_salesforce', 'announcement') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        expiration_date,
        feed_item_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        send_emails,
        system_modstamp,
        is_archived

    from source

)

select * from renamed
