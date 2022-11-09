
with source as (

    select * from {{ source('raw_salesforce', 'network_feed_response_metric') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        best_comment_date_time,
        best_comment_id,
        created_by_id,
        created_date,
        currency_iso_code,
        feed_item_created_by_id,
        feed_item_date_time,
        feed_item_id,
        first_comment_date_time,
        first_comment_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        marked_as_best_comment_date_time,
        name,
        network_id,
        parent_record_id,
        system_modstamp

    from source

)

select * from renamed
