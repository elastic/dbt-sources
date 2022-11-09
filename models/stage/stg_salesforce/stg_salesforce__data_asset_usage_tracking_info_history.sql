
with source as (

    select * from {{ source('raw_salesforce', 'data_asset_usage_tracking_info_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        first_usage_time,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_usage_time,
        name,
        system_modstamp,
        usage_count,
        usage_entity_id,
        usage_tracking_category,
        usage_tracking_type,
        user_id

    from source

)

select * from renamed
