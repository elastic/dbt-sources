
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_product_attribute_c') }}

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
        sbqq_applied_immediately_c,
        sbqq_apply_to_product_options_c,
        sbqq_attribute_c,
        sbqq_attribute_set_c,
        sbqq_auto_select_c,
        sbqq_hidden_c,
        sbqq_hidden_values_c,
        sbqq_required_c,
        sbqq_sequence_c,
        sbqq_shown_values_c,
        sbqq_target_field_c,
        system_modstamp

    from source

)

select * from renamed
