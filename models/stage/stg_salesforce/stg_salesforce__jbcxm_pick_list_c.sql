
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_pick_list_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_active_c,
        jbcxm_adoption_measure_c,
        jbcxm_attribute_1_c,
        jbcxm_attribute_2_c,
        jbcxm_attribute_3_c,
        jbcxm_attribute_4_c,
        jbcxm_category_c,
        jbcxm_ctatype_c,
        jbcxm_display_order_c,
        jbcxm_entity_type_c,
        jbcxm_include_in_widget_c,
        jbcxm_is_scmeasure_c,
        jbcxm_map_to_booking_type_c,
        jbcxm_relationship_type_c,
        jbcxm_report_category_c,
        jbcxm_short_name_c,
        jbcxm_sub_entity_type_c,
        jbcxm_system_defined_c,
        jbcxm_system_name_c,
        jbcxm_usage_tracking_measure_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
