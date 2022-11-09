
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_enrollments_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_marketo_update_c,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        learndot_completion_date_c,
        learndot_component_id_c,
        learndot_component_name_c,
        learndot_component_type_c,
        learndot_confidence_c,
        learndot_custom_field_10_c,
        learndot_custom_field_1_c,
        learndot_custom_field_2_c,
        learndot_custom_field_3_c,
        learndot_custom_field_4_c,
        learndot_custom_field_5_c,
        learndot_custom_field_6_c,
        learndot_custom_field_7_c,
        learndot_custom_field_8_c,
        learndot_custom_field_9_c,
        learndot_expiry_date_c,
        learndot_id_c,
        learndot_learndot_account_c,
        learndot_learndot_catalog_item_c,
        learndot_learndot_contact_c,
        learndot_learndot_created_c,
        learndot_learndot_event_c,
        learndot_learndot_modified_c,
        learndot_learndot_order_line_c,
        learndot_parent_enrollment_c,
        learndot_percent_complete_c,
        learndot_provider_c,
        learndot_score_c,
        learndot_status_c,
        learndot_subscription_package_c,
        learndot_top_enrollment_c,
        learndot_total_seconds_tracked_c,
        marketo_id_c,
        name,
        opportunity_c,
        owner_id,
        system_modstamp,
        last_modified_marketo_diff_c,
        learndot_confidence_numeric_c,
        learndot_score_numeric_c

    from source

)

select * from renamed
