
with source as (

    select * from {{ source('raw_salesforce', 'chatter_delete_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        allow_feed_post_and_comment_deletes_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
