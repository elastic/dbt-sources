
with source as (

    select * from {{ source('raw_salesforce', 'pse_missing_timecards_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_check_assignments_for_internal_resource_c,
        pse_ignore_closed_assignments_c,
        pse_use_resource_work_calendar_week_start_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
