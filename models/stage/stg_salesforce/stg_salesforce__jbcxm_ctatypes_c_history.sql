
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_ctatypes_c_history') }}

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
        jbcxm_close_milestone_c,
        jbcxm_color_c,
        jbcxm_ctaassociation_meta_data_c,
        jbcxm_default_closed_status_c,
        jbcxm_default_open_status_c,
        jbcxm_default_priority_c,
        jbcxm_default_reason_c,
        jbcxm_default_snooze_reason_c,
        jbcxm_display_order_c,
        jbcxm_entity_type_c,
        jbcxm_for_success_plan_c,
        jbcxm_is_active_c,
        jbcxm_open_milestone_c,
        jbcxm_plural_label_c,
        jbcxm_recurring_c,
        jbcxm_relationship_type_c,
        jbcxm_report_category_c,
        jbcxm_system_defined_c,
        jbcxm_task_association_meta_data_c,
        jbcxm_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
