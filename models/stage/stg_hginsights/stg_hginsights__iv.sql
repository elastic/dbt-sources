
with source as (

    select * from {{ source('raw_hginsights', 'iv') }}

),

renamed as (

    select
        _file,
        _line,
        _modified,
        _fivetran_synced,
        city_name,
        company_id,
        company_level,
        company_name,
        continent_name,
        country_id,
        country_name,
        domain_name,
        duns_id,
        employee_band_name,
        geopolitical_name,
        group_hq_city_name,
        group_hq_company_id,
        group_hq_company_name,
        group_hq_continent_name,
        group_hq_country_id,
        group_hq_country_name,
        group_hq_domain_name,
        group_hq_geopolitical_name,
        group_hq_latitude_num,
        group_hq_longitude_num,
        group_hq_state_abbr_name,
        group_hq_state_name,
        group_hq_sub_continent_name,
        industry_id,
        industry_name,
        latitude_num,
        longitude_num,
        naics_code,
        naics_industry,
        product_ai_robotics_flag,
        product_blockchain_flag,
        product_category_id,
        product_category_level_1_name,
        product_category_level_2_name,
        product_category_level_3_name,
        product_category_level_4_name,
        product_description,
        product_first_verified_date,
        product_id,
        product_intensity_total,
        product_last_verified_date,
        product_last_verified_year,
        product_mobile_flag,
        product_name,
        product_on_premise_flag,
        product_volume_total,
        product_web_cloud_based_flag,
        revenue_band_name,
        state_abbr_name,
        state_name,
        sub_continent_name,
        vendor_duns_id,
        vendor_id,
        vendor_name,
        street_address_line_1,
        postal_code

    from source

)

select * from renamed
