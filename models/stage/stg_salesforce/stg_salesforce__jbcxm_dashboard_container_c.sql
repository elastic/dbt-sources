
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_dashboard_container_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_allow_change_c,
        jbcxm_container_info_c,
        jbcxm_container_options_c,
        jbcxm_container_type_c,
        jbcxm_cssproperties_c,
        jbcxm_dashboard_c,
        jbcxm_dashboard_component_c,
        jbcxm_display_order_c,
        jbcxm_source_id_c,
        jbcxm_source_type_c,
        jbcxm_uiview_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
