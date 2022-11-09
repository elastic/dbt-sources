
with source as (

    select * from {{ source('raw_salesforce', 'dnboptimizer_dn_bcompany_record_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dnboptimizer_business_description_c,
        dnboptimizer_business_name_c,
        dnboptimizer_combined_address_c,
        dnboptimizer_delisted_indicator_c,
        dnboptimizer_domestic_ultimate_business_name_c,
        dnboptimizer_domestic_ultimate_dunsnumber_c,
        dnboptimizer_domestic_ultimate_indicator_c,
        dnboptimizer_dunsnumber_c,
        dnboptimizer_employee_count_total_c,
        dnboptimizer_employee_count_total_reliability_code_c,
        dnboptimizer_employee_count_total_reliability_description_c,
        dnboptimizer_employee_count_trend_year_c,
        dnboptimizer_employees_here_c,
        dnboptimizer_employees_here_reliability_code_c,
        dnboptimizer_employees_here_reliability_description_c,
        dnboptimizer_fax_number_c,
        dnboptimizer_fiscal_year_end_c,
        dnboptimizer_fortune_1000_rank_c,
        dnboptimizer_global_ultimate_business_name_c,
        dnboptimizer_global_ultimate_dunsnumber_c,
        dnboptimizer_global_ultimate_indicator_c,
        dnboptimizer_headquarter_business_name_c,
        dnboptimizer_headquarter_dunsnumber_c,
        dnboptimizer_importer_exporter_description_c,
        dnboptimizer_importer_exporter_indicator_c,
        dnboptimizer_inactive_c,
        dnboptimizer_incorporated_date_c,
        dnboptimizer_legal_status_code_c,
        dnboptimizer_legal_structure_description_c,
        dnboptimizer_location_type_c,
        dnboptimizer_mailing_address_1_c,
        dnboptimizer_mailing_address_2_c,
        dnboptimizer_mailing_city_name_c,
        dnboptimizer_mailing_country_code_c,
        dnboptimizer_mailing_country_code_iso_c,
        dnboptimizer_mailing_postal_code_c,
        dnboptimizer_mailing_state_abbreviation_c,
        dnboptimizer_mailing_state_abbreviation_iso_c,
        dnboptimizer_mailing_state_name_c,
        dnboptimizer_marketable_indicator_c,
        dnboptimizer_minority_owned_indicator_c,
        dnboptimizer_naicscode_1_c,
        dnboptimizer_naicscode_2_c,
        dnboptimizer_naicscode_3_c,
        dnboptimizer_naicsdescription_1_c,
        dnboptimizer_naicsdescription_2_c,
        dnboptimizer_naicsdescription_3_c,
        dnboptimizer_national_identification_number_c,
        dnboptimizer_national_identification_system_c,
        dnboptimizer_numberof_family_members_c,
        dnboptimizer_outof_business_indicator_c,
        dnboptimizer_parent_business_name_c,
        dnboptimizer_parent_dunsnumber_c,
        dnboptimizer_primary_city_name_c,
        dnboptimizer_primary_country_code_c,
        dnboptimizer_primary_country_code_iso_c,
        dnboptimizer_primary_country_name_c,
        dnboptimizer_primary_county_name_c,
        dnboptimizer_primary_latitude_c,
        dnboptimizer_primary_longitude_c,
        dnboptimizer_primary_owns_rents_code_c,
        dnboptimizer_primary_postal_code_c,
        dnboptimizer_primary_square_footage_c,
        dnboptimizer_primary_state_province_abbreviation_c,
        dnboptimizer_primary_state_province_abbreviation_iso_c,
        dnboptimizer_primary_state_province_name_c,
        dnboptimizer_primary_street_address_2_c,
        dnboptimizer_primary_street_address_c,
        dnboptimizer_primary_usmetropolitan_area_c,
        dnboptimizer_public_private_indicator_c,
        dnboptimizer_revenue_trend_year_c,
        dnboptimizer_sales_volume_reliability_code_c,
        dnboptimizer_sales_volume_reliability_description_c,
        dnboptimizer_sales_volume_usdollars_c,
        dnboptimizer_sic_4_code_1_c,
        dnboptimizer_sic_4_code_1_description_c,
        dnboptimizer_sic_4_code_2_c,
        dnboptimizer_sic_4_code_2_description_c,
        dnboptimizer_sic_4_code_3_c,
        dnboptimizer_sic_4_code_3_description_c,
        dnboptimizer_sic_8_code_1_c,
        dnboptimizer_sic_8_code_1_description_c,
        dnboptimizer_sic_8_code_2_c,
        dnboptimizer_sic_8_code_2_description_c,
        dnboptimizer_sic_8_code_3_c,
        dnboptimizer_sic_8_code_3_description_c,
        dnboptimizer_small_business_indicator_c,
        dnboptimizer_stock_exchange_c,
        dnboptimizer_stock_symbol_c,
        dnboptimizer_subsidiary_indicator_c,
        dnboptimizer_telephone_number_c,
        dnboptimizer_tradestyle_name_1_c,
        dnboptimizer_tradestyle_name_2_c,
        dnboptimizer_tradestyle_name_3_c,
        dnboptimizer_ustax_id_c,
        dnboptimizer_web_address_c,
        dnboptimizer_woman_owned_indicator_c,
        dnboptimizer_year_started_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
