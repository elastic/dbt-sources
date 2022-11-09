
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_custom_report_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_is_auto_saved_c,
        fstr_is_global_setting_c,
        fstr_settings_c,
        fstr_user_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
