
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_source_line_item_test_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_aboolean_field_c,
        ffirule_another_text_field_c,
        ffirule_anumber_field_c,
        ffirule_atext_field_c,
        ffirule_click_link_another_source_line_item_count_c,
        ffirule_integration_rule_source_test_c,
        ffirule_process_c,
        ffirule_process_formula_c,
        ffirule_processed_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
