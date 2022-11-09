
with source as (

    select * from {{ source('raw_salesforce', 'customer_intel_setting_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        count_c,
        created_by_id,
        created_date,
        currency_iso_code,
        field_to_update_c,
        is_deleted,
        is_historical_update_c,
        last_historical_timestamp_c,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        time_window_c,
        time_window_end_c

    from source

)

select * from renamed
