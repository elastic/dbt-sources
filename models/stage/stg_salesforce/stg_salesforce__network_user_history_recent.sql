
with source as (

    select * from {{ source('raw_salesforce', 'network_user_history_recent') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        access_timestamp,
        action_type,
        combined_id_field,
        created_by_id,
        created_date,
        currency_iso_code,
        domain_name,
        feed_comment_id,
        feed_item_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        network_id,
        network_user_id,
        record_id,
        record_key_prefix,
        system_modstamp,
        url,
        user_type

    from source

)

select * from renamed
