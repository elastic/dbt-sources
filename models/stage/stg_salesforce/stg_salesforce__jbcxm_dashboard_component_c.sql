
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_dashboard_component_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_categories_c,
        jbcxm_data_series_c,
        jbcxm_drill_down_column_list_c,
        jbcxm_filter_conditions_c,
        jbcxm_report_params_c,
        jbcxm_title_c,
        jbcxm_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
