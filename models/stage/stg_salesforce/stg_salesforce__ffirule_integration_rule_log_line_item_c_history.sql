
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_log_line_item_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_created_date_c,
        ffirule_integration_rule_log_c,
        ffirule_message_c,
        ffirule_related_source_line_item_test_c,
        ffirule_related_source_test_c,
        ffirule_severity_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
