
with source as (

    select * from {{ source('raw_salesforce', 'pse_resource_change_c_history') }}

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
        pse_change_date_c,
        pse_new_group_c,
        pse_new_is_resource_active_c,
        pse_new_is_resource_c,
        pse_new_practice_c,
        pse_new_region_c,
        pse_new_resource_role_c,
        pse_new_utilization_target_c,
        pse_new_work_calendar_c,
        pse_old_group_c,
        pse_old_is_resource_active_c,
        pse_old_is_resource_c,
        pse_old_practice_c,
        pse_old_region_c,
        pse_old_resource_role_c,
        pse_old_utilization_target_c,
        pse_old_work_calendar_c,
        pse_resource_c,
        system_modstamp

    from source

)

select * from renamed
