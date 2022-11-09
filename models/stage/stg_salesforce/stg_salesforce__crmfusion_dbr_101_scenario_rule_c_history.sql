
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_scenario_rule_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_alpha_clean_c,
        crmfusion_dbr_101_english_fuzzy_c,
        crmfusion_dbr_101_field_display_value_c,
        crmfusion_dbr_101_field_name_c,
        crmfusion_dbr_101_first_xx_letters_c,
        crmfusion_dbr_101_first_xx_words_c,
        crmfusion_dbr_101_mapping_type_c,
        crmfusion_dbr_101_match_blank_c,
        crmfusion_dbr_101_match_field_c,
        crmfusion_dbr_101_regex_c,
        crmfusion_dbr_101_related_field_display_value_c,
        crmfusion_dbr_101_related_field_name_c,
        crmfusion_dbr_101_scenario_c,
        crmfusion_dbr_101_scenario_type_c,
        crmfusion_dbr_101_transpose_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
