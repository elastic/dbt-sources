
with source as (

    select * from {{ source('raw_salesforce', 'appirio_core_key_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        appirio_core_expenses_only_c,
        appirio_core_expenses_only_used_c,
        appirio_core_key_value_c,
        appirio_core_open_enrollment_c,
        appirio_core_open_enrollment_used_c,
        appirio_core_project_management_c,
        appirio_core_project_management_used_c,
        appirio_core_resource_c,
        appirio_core_resource_used_c,
        appirio_core_timecard_only_c,
        appirio_core_timecard_only_used_c,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
