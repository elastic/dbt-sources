
with source as (

    select * from {{ source('raw_salesforce', 'pse_time_variance_settings_c_history') }}

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
        pse_allowed_variance_over_c,
        pse_allowed_variance_under_c,
        pse_exclude_billable_hours_c,
        pse_exclude_credited_hours_c,
        pse_exclude_excluded_hours_c,
        pse_report_all_c,
        pse_use_percentage_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
