
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_template_section_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_border_color_c,
        sbqq_bottom_margin_c,
        sbqq_column_header_hidden_c,
        sbqq_conditional_print_field_c,
        sbqq_content_c,
        sbqq_display_order_c,
        sbqq_filter_field_c,
        sbqq_filter_operator_c,
        sbqq_filter_value_c,
        sbqq_group_field_c,
        sbqq_keep_together_c,
        sbqq_keep_with_next_c,
        sbqq_keep_with_previous_c,
        sbqq_page_break_c,
        sbqq_quote_totals_printed_c,
        sbqq_roll_up_field_c,
        sbqq_summary_display_c,
        sbqq_template_c,
        sbqq_top_margin_c,
        system_modstamp

    from source

)

select * from renamed
