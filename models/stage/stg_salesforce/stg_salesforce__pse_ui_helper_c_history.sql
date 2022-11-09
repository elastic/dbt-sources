
with source as (

    select * from {{ source('raw_salesforce', 'pse_ui_helper_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_account_c,
        pse_active_resource_c,
        pse_checkbox_c,
        pse_contact_c,
        pse_date_c,
        pse_date_time_c,
        pse_group_c,
        pse_number_0_c,
        pse_number_1_c,
        pse_number_2_c,
        pse_opportunity_c,
        pse_percentage_c,
        pse_practice_c,
        pse_project_c,
        pse_region_c,
        pse_resource_c,
        pse_ui_storage_c,
        pse_ui_storage_index_c,
        pse_user_c,
        system_modstamp

    from source

)

select * from renamed
