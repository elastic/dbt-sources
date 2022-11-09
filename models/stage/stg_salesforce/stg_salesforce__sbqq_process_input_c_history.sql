
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_process_input_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        family_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        product_support_type_c,
        sbqq_active_c,
        sbqq_binary_choice_c,
        sbqq_conditions_met_c,
        sbqq_default_field_c,
        sbqq_display_order_c,
        sbqq_input_field_c,
        sbqq_integer_input_c,
        sbqq_label_c,
        sbqq_operator_c,
        sbqq_process_input_condition_c,
        sbqq_product_field_c,
        sbqq_quote_process_c,
        support_type_c,
        system_modstamp,
        product_category_c,
        product_class_c,
        product_type_c

    from source

)

select * from renamed
