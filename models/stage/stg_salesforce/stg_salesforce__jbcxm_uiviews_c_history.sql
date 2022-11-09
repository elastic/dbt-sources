
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_uiviews_c_history') }}

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
        jbcxm_base_object_c,
        jbcxm_chart_config_c,
        jbcxm_column_list_c,
        jbcxm_description_c,
        jbcxm_dimensions_c,
        jbcxm_external_view_id_c,
        jbcxm_filter_conditions_c,
        jbcxm_graph_type_c,
        jbcxm_group_display_order_c,
        jbcxm_group_name_c,
        jbcxm_having_clause_c,
        jbcxm_is_rb_c,
        jbcxm_is_shown_c,
        jbcxm_is_standard_c,
        jbcxm_measures_c,
        jbcxm_query_options_c,
        jbcxm_report_params_c,
        jbcxm_section_id_c,
        jbcxm_show_default_c,
        jbcxm_sptype_c,
        jbcxm_system_name_c,
        jbcxm_uitab_name_c,
        jbcxm_user_id_c,
        jbcxm_visibility_c,
        jbcxm_visual_type_c,
        jbcxm_where_clause_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
