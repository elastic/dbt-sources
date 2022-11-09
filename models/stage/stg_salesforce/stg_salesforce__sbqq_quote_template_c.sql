
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_quote_template_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_all_package_products_shown_c,
        sbqq_bill_to_title_c,
        sbqq_border_color_c,
        sbqq_bottom_margin_c,
        sbqq_bundled_products_shown_c,
        sbqq_company_city_c,
        sbqq_company_country_c,
        sbqq_company_email_c,
        sbqq_company_fax_c,
        sbqq_company_name_c,
        sbqq_company_phone_c,
        sbqq_company_postal_code_c,
        sbqq_company_slogan_c,
        sbqq_company_state_c,
        sbqq_company_street_c,
        sbqq_component_products_hidden_c,
        sbqq_customer_discount_field_c,
        sbqq_customer_discount_label_c,
        sbqq_customer_discount_shown_c,
        sbqq_default_c,
        sbqq_deployment_status_c,
        sbqq_discount_schedule_shown_c,
        sbqq_exclude_header_footer_c,
        sbqq_excluded_pages_c,
        sbqq_font_family_c,
        sbqq_font_size_c,
        sbqq_footer_content_c,
        sbqq_footer_height_c,
        sbqq_generator_name_c,
        sbqq_grand_total_prefix_c,
        sbqq_group_field_c,
        sbqq_group_font_family_c,
        sbqq_group_font_size_c,
        sbqq_group_font_style_c,
        sbqq_group_gap_c,
        sbqq_group_shading_color_c,
        sbqq_group_text_alignment_c,
        sbqq_group_text_color_c,
        sbqq_header_content_c,
        sbqq_header_height_c,
        sbqq_hide_group_subtotals_c,
        sbqq_introduction_title_c,
        sbqq_left_margin_c,
        sbqq_line_numbering_c,
        sbqq_line_sort_field_c,
        sbqq_logo_document_id_c,
        sbqq_notes_title_c,
        sbqq_page_height_c,
        sbqq_page_number_alignment_c,
        sbqq_page_number_position_c,
        sbqq_page_number_text_c,
        sbqq_page_orientation_c,
        sbqq_page_width_c,
        sbqq_partner_discount_label_c,
        sbqq_partner_discount_shown_c,
        sbqq_renewed_products_shown_c,
        sbqq_right_margin_c,
        sbqq_roll_up_field_c,
        sbqq_shading_color_c,
        sbqq_ship_to_title_c,
        sbqq_sub_group_field_c,
        sbqq_subtotal_field_c,
        sbqq_subtotal_label_c,
        sbqq_term_body_indent_c,
        sbqq_terms_conditions_c,
        sbqq_terms_conditions_title_c,
        sbqq_terms_numbered_c,
        sbqq_text_color_c,
        sbqq_top_margin_c,
        sbqq_total_field_c,
        sbqq_total_label_c,
        sbqq_totals_hidden_c,
        sbqq_watermark_id_c,
        system_modstamp

    from source

)

select * from renamed