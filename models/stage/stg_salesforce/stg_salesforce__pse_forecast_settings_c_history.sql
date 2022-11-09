
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_settings_c_history') }}

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
        pse_actuals_cutoff_date_c,
        pse_batch_size_c,
        pse_category_1_label_c,
        pse_category_2_label_c,
        pse_category_3_label_c,
        pse_category_4_label_c,
        pse_category_5_label_c,
        pse_category_6_label_c,
        pse_category_7_label_c,
        pse_default_opportunity_curve_c,
        pse_default_project_curve_c,
        pse_maximum_queue_size_c,
        pse_notifications_chatter_c,
        pse_notifications_email_c,
        pse_notifications_recipients_c,
        pse_notifications_task_c,
        pse_opportunity_category_1_calculation_c,
        pse_opportunity_category_2_calculation_c,
        pse_opportunity_category_3_calculation_c,
        pse_opportunity_category_4_calculation_c,
        pse_opportunity_category_5_calculation_c,
        pse_opportunity_category_6_calculation_c,
        pse_opportunity_category_7_calculation_c,
        pse_project_category_1_calculation_c,
        pse_project_category_2_calculation_c,
        pse_project_category_3_calculation_c,
        pse_project_category_4_calculation_c,
        pse_project_category_5_calculation_c,
        pse_project_category_6_calculation_c,
        pse_project_category_7_calculation_c,
        pse_use_category_1_c,
        pse_use_category_2_c,
        pse_use_category_3_c,
        pse_use_category_4_c,
        pse_use_category_5_c,
        pse_use_category_6_c,
        pse_use_category_7_c,
        pse_use_is_services_product_on_opp_product_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
