
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_state_preservation_c_history') }}

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
        jbcxm_c_360_section_id_c,
        jbcxm_client_side_filter_c,
        jbcxm_dashboard_container_id_c,
        jbcxm_dashboard_id_c,
        jbcxm_entity_type_c,
        jbcxm_global_filters_c,
        jbcxm_having_params_c,
        jbcxm_relationship_section_c,
        jbcxm_relationship_type_c,
        jbcxm_report_params_c,
        jbcxm_server_side_filters_c,
        jbcxm_sort_columns_c,
        jbcxm_sub_section_c,
        jbcxm_uiview_c,
        jbcxm_uiview_id_c,
        jbcxm_user_c,
        jbcxm_user_session_id_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
