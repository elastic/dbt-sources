
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_c_360_sections_c_history') }}

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
        jbcxm_account_reference_c,
        jbcxm_actual_object_id_c,
        jbcxm_custom_config_c,
        jbcxm_display_label_c,
        jbcxm_display_order_c,
        jbcxm_field_id_c,
        jbcxm_gslayout_c,
        jbcxm_in_account_widget_c,
        jbcxm_in_customer_360_c,
        jbcxm_in_mobile_c,
        jbcxm_in_opportunity_widget_c,
        jbcxm_in_scwidget_c,
        jbcxm_is_active_c,
        jbcxm_is_standard_object_c,
        jbcxm_object_id_c,
        jbcxm_object_name_c,
        jbcxm_page_name_c,
        jbcxm_report_items_c,
        jbcxm_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
