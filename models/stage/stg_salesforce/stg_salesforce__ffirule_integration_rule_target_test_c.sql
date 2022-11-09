
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_target_test_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_aboolean_field_c,
        ffirule_alookup_field_c,
        ffirule_another_boolean_field_c,
        ffirule_another_lookup_field_c,
        ffirule_another_number_field_c,
        ffirule_another_status_c,
        ffirule_anumber_field_c,
        ffirule_atext_field_c,
        ffirule_currency_c,
        ffirule_date_c,
        ffirule_date_time_c,
        ffirule_email_c,
        ffirule_integration_rule_source_test_c,
        ffirule_number_16_c,
        ffirule_percent_2_c,
        ffirule_percent_4_c,
        ffirule_phone_c,
        ffirule_picklist_c,
        ffirule_picklist_multi_c,
        ffirule_status_c,
        ffirule_syncing_c,
        ffirule_text_10_c,
        ffirule_text_area_c,
        ffirule_text_area_long_c,
        ffirule_text_area_rich_c,
        ffirule_time_c,
        ffirule_url_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
