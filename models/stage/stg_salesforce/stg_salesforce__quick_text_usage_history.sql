
with source as (

    select * from {{ source('raw_salesforce', 'quick_text_usage_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        app_context,
        channel,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        launch_source,
        logged_time,
        name,
        owner_id,
        quick_text_id,
        system_modstamp,
        user_id

    from source

)

select * from renamed
