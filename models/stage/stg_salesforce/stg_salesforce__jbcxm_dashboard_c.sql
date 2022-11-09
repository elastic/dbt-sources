
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_dashboard_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_description_c,
        jbcxm_filter_conditions_c,
        jbcxm_global_filters_c,
        jbcxm_is_active_c,
        jbcxm_is_enabled_c,
        jbcxm_layout_type_c,
        jbcxm_report_section_c,
        jbcxm_type_c,
        jbcxm_user_c,
        jbcxm_visibility_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
