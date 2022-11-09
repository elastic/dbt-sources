
with source as (

    select * from {{ source('raw_salesforce', 'pse_common_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_use_s_object_for_column_preferences_c,
        pse_week_start_day_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
