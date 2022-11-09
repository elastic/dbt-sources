
with source as (

    select * from {{ source('raw_salesforce', 'pse_missing_timecard_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_date_timecard_entered_c,
        pse_end_date_c,
        pse_include_sublevels_c,
        pse_missing_timecard_calculation_c,
        pse_resource_c,
        pse_start_date_c,
        system_modstamp,
        email_alert_ran_c

    from source

)

select * from renamed
