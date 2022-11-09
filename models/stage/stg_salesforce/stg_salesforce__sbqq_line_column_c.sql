
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_line_column_c') }}

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
        name,
        sbqq_alignment_c,
        sbqq_bottom_margin_c,
        sbqq_column_heading_field_c,
        sbqq_conditional_print_field_c,
        sbqq_display_order_c,
        sbqq_dynamic_number_scale_c,
        sbqq_field_name_c,
        sbqq_font_family_c,
        sbqq_font_size_c,
        sbqq_font_weight_c,
        sbqq_heading_text_color_c,
        sbqq_hide_on_components_c,
        sbqq_left_margin_c,
        sbqq_right_margin_c,
        sbqq_roll_up_c,
        sbqq_section_c,
        sbqq_separate_line_c,
        sbqq_sub_group_summary_label_c,
        sbqq_summary_font_weight_c,
        sbqq_summary_function_c,
        sbqq_summary_label_c,
        sbqq_summary_level_c,
        sbqq_summary_shading_color_c,
        sbqq_summary_text_color_c,
        sbqq_template_c,
        sbqq_text_color_c,
        sbqq_top_margin_c,
        sbqq_width_c,
        sbqq_width_discarded_when_hidden_c,
        system_modstamp

    from source

)

select * from renamed
