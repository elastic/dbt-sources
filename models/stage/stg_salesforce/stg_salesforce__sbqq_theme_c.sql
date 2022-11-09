
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_theme_c') }}

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
        sbqq_accent_icon_disabled_font_color_c,
        sbqq_accent_icon_font_color_c,
        sbqq_accent_icon_hover_font_color_c,
        sbqq_badge_background_color_c,
        sbqq_badge_border_color_c,
        sbqq_badge_border_style_c,
        sbqq_badge_border_width_c,
        sbqq_badge_font_color_c,
        sbqq_badge_font_family_c,
        sbqq_badge_font_size_c,
        sbqq_brand_button_border_color_c,
        sbqq_brand_button_disabled_font_color_c,
        sbqq_brand_button_font_family_c,
        sbqq_brand_button_hover_font_color_c,
        sbqq_bundle_layout_header_bg_color_c,
        sbqq_bundle_layout_header_color_c,
        sbqq_bundle_layout_header_font_family_c,
        sbqq_bundle_layout_header_font_size_c,
        sbqq_bundle_layout_header_font_style_c,
        sbqq_bundle_layout_header_font_weight_c,
        sbqq_bundle_layout_header_text_decoration_c,
        sbqq_checkbox_background_color_checked_c,
        sbqq_checkbox_background_color_unchecked_c,
        sbqq_checkbox_border_color_c,
        sbqq_checkbox_border_radius_c,
        sbqq_checkbox_border_style_c,
        sbqq_checkbox_border_width_c,
        sbqq_checkbox_check_mark_color_c,
        sbqq_checkbox_size_c,
        sbqq_compiled_css_c,
        sbqq_component_row_font_color_c,
        sbqq_component_row_font_style_c,
        sbqq_component_row_font_weight_c,
        sbqq_component_row_text_decoration_c,
        sbqq_configuration_attribute_label_color_c,
        sbqq_configurator_custom_action_border_color_c,
        sbqq_configurator_custom_action_color_c,
        sbqq_configurator_custom_action_font_color_c,
        sbqq_configurator_custom_action_hover_color_c,
        sbqq_configurator_custom_action_hover_font_color_c,
        sbqq_detail_color_c,
        sbqq_dialog_background_color_c,
        sbqq_dialog_border_radius_c,
        sbqq_dialog_close_color_c,
        sbqq_dialog_font_family_c,
        sbqq_dialog_footer_border_color_c,
        sbqq_dialog_footer_border_style_c,
        sbqq_dialog_footer_border_width_c,
        sbqq_dialog_footer_color_c,
        sbqq_dialog_header_border_color_c,
        sbqq_dialog_header_border_style_c,
        sbqq_dialog_header_border_width_c,
        sbqq_dialog_header_padding_bottom_c,
        sbqq_dialog_header_padding_left_c,
        sbqq_dialog_header_padding_right_c,
        sbqq_dialog_header_padding_top_c,
        sbqq_dialog_mask_color_c,
        sbqq_document_id_c,
        sbqq_feature_instructions_color_c,
        sbqq_feature_instructions_font_family_c,
        sbqq_feature_instructions_font_size_c,
        sbqq_feature_instructions_font_style_c,
        sbqq_feature_instructions_font_weight_c,
        sbqq_feature_instructions_padding_bottom_c,
        sbqq_feature_instructions_padding_left_c,
        sbqq_feature_instructions_padding_right_c,
        sbqq_feature_instructions_padding_top_c,
        sbqq_feature_instructions_text_decoration_c,
        sbqq_field_editable_icon_color_c,
        sbqq_field_edited_color_c,
        sbqq_filter_drawer_font_color_c,
        sbqq_general_border_color_c,
        sbqq_general_color_c,
        sbqq_general_font_color_c,
        sbqq_general_font_family_c,
        sbqq_group_border_color_c,
        sbqq_group_border_width_c,
        sbqq_group_button_border_color_c,
        sbqq_group_button_color_c,
        sbqq_group_button_disabled_font_color_c,
        sbqq_group_button_font_color_c,
        sbqq_group_button_hover_color_c,
        sbqq_group_button_hover_font_color_c,
        sbqq_group_header_background_color_c,
        sbqq_group_header_border_bottom_color_c,
        sbqq_group_header_border_bottom_width_c,
        sbqq_group_header_font_color_c,
        sbqq_group_header_font_family_c,
        sbqq_group_header_font_size_c,
        sbqq_group_header_font_style_c,
        sbqq_group_header_font_weight_c,
        sbqq_group_header_text_decoration_c,
        sbqq_header_border_color_c,
        sbqq_header_border_style_c,
        sbqq_header_border_width_c,
        sbqq_header_color_c,
        sbqq_header_font_color_c,
        sbqq_header_font_family_c,
        sbqq_header_font_size_c,
        sbqq_header_font_style_c,
        sbqq_header_font_weight_c,
        sbqq_header_icon_color_c,
        sbqq_header_icon_font_size_c,
        sbqq_header_min_height_c,
        sbqq_header_padding_bottom_c,
        sbqq_header_padding_left_c,
        sbqq_header_padding_right_c,
        sbqq_header_padding_top_c,
        sbqq_header_secondary_font_color_c,
        sbqq_header_secondary_font_family_c,
        sbqq_header_secondary_font_size_c,
        sbqq_header_secondary_font_style_c,
        sbqq_header_secondary_font_weight_c,
        sbqq_header_secondary_text_decoration_c,
        sbqq_header_text_decoration_c,
        sbqq_hide_icons_c,
        sbqq_hyperlink_active_color_c,
        sbqq_hyperlink_color_c,
        sbqq_hyperlink_disabled_color_c,
        sbqq_hyperlink_hover_color_c,
        sbqq_icon_disabled_color_c,
        sbqq_icon_font_color_c,
        sbqq_icon_hover_color_c,
        sbqq_icon_mobile_copy_background_color_c,
        sbqq_icon_mobile_delete_background_color_c,
        sbqq_icon_mobile_line_action_color_c,
        sbqq_icon_mobile_star_background_color_c,
        sbqq_icon_mobile_star_fill_color_c,
        sbqq_icon_mobile_wand_background_color_c,
        sbqq_icon_page_loading_color_c,
        sbqq_input_outline_color_c,
        sbqq_input_outline_width_c,
        sbqq_loading_mask_color_c,
        sbqq_navigation_drawer_color_c,
        sbqq_navigation_drawer_font_color_c,
        sbqq_navigation_drawer_header_color_c,
        sbqq_navigation_drawer_header_font_color_c,
        sbqq_navigation_drawer_row_color_c,
        sbqq_navigation_drawer_row_hover_color_c,
        sbqq_navigation_drawer_row_selected_color_c,
        sbqq_parent_line_row_font_color_c,
        sbqq_parent_line_row_font_style_c,
        sbqq_parent_line_row_font_weight_c,
        sbqq_parent_line_row_text_decoration_c,
        sbqq_primary_button_color_c,
        sbqq_primary_button_font_color_c,
        sbqq_primary_button_hover_color_c,
        sbqq_radio_button_color_checked_c,
        sbqq_radio_button_color_unchecked_c,
        sbqq_secondary_font_color_c,
        sbqq_secondary_header_color_c,
        sbqq_select_background_color_c,
        sbqq_select_border_color_c,
        sbqq_select_border_radius_c,
        sbqq_select_border_style_c,
        sbqq_select_border_width_c,
        sbqq_select_contract_hide_skip_action_on_add_on_c,
        sbqq_select_contract_hide_skip_action_on_amend_c,
        sbqq_select_height_c,
        sbqq_select_padding_bottom_c,
        sbqq_select_padding_left_c,
        sbqq_select_padding_right_c,
        sbqq_select_padding_top_c,
        sbqq_standalone_product_row_font_color_c,
        sbqq_standalone_product_row_font_style_c,
        sbqq_standalone_product_row_font_weight_c,
        sbqq_standalone_product_row_text_decoration_c,
        sbqq_standard_button_border_radius_c,
        sbqq_standard_button_disabled_background_color_c,
        sbqq_standard_button_font_family_c,
        sbqq_standard_button_font_size_c,
        sbqq_standard_button_font_weight_c,
        sbqq_standard_button_padding_bottom_c,
        sbqq_standard_button_padding_left_c,
        sbqq_standard_button_padding_right_c,
        sbqq_standard_button_padding_top_c,
        sbqq_tab_color_c,
        sbqq_tab_font_family_c,
        sbqq_tab_hover_color_c,
        sbqq_tab_selected_color_c,
        sbqq_table_cell_padding_bottom_c,
        sbqq_table_cell_padding_left_c,
        sbqq_table_cell_padding_right_c,
        sbqq_table_cell_padding_top_c,
        sbqq_table_grouped_row_background_color_c,
        sbqq_table_grouped_row_border_bottom_color_c,
        sbqq_table_grouped_row_border_bottom_style_c,
        sbqq_table_grouped_row_border_bottom_width_c,
        sbqq_table_grouped_row_line_height_c,
        sbqq_table_grouped_row_padding_bottom_c,
        sbqq_table_grouped_row_padding_top_c,
        sbqq_table_header_background_color_c,
        sbqq_table_header_border_bottom_color_c,
        sbqq_table_header_border_bottom_style_c,
        sbqq_table_header_border_bottom_width_c,
        sbqq_table_header_cell_height_c,
        sbqq_table_header_font_color_c,
        sbqq_table_header_font_family_c,
        sbqq_table_header_font_size_c,
        sbqq_table_header_font_style_c,
        sbqq_table_header_font_weight_c,
        sbqq_table_header_text_decoration_c,
        sbqq_table_row_background_color_c,
        sbqq_table_row_border_bottom_color_c,
        sbqq_table_row_border_bottom_style_c,
        sbqq_table_row_border_bottom_width_c,
        sbqq_table_row_font_color_c,
        sbqq_table_row_font_family_c,
        sbqq_table_row_font_size_c,
        sbqq_table_row_font_style_c,
        sbqq_table_row_font_weight_c,
        sbqq_table_row_hover_color_c,
        sbqq_table_row_line_height_c,
        sbqq_table_row_padding_bottom_c,
        sbqq_table_row_padding_top_c,
        sbqq_table_row_text_decoration_c,
        sbqq_textbox_background_color_c,
        sbqq_textbox_border_color_c,
        sbqq_textbox_border_radius_c,
        sbqq_textbox_border_style_c,
        sbqq_textbox_border_width_c,
        sbqq_textbox_height_c,
        sbqq_textbox_padding_bottom_c,
        sbqq_textbox_padding_left_c,
        sbqq_textbox_padding_right_c,
        sbqq_textbox_padding_top_c,
        sbqq_ui_2_document_id_c,
        system_modstamp

    from source

)

select * from renamed
