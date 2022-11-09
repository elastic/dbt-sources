
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_product_rule_c') }}

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
        sbqq_active_c,
        sbqq_advanced_condition_c,
        sbqq_conditions_met_c,
        sbqq_error_message_c,
        sbqq_evaluation_event_c,
        sbqq_evaluation_order_c,
        sbqq_lookup_message_field_c,
        sbqq_lookup_object_c,
        sbqq_lookup_product_field_c,
        sbqq_lookup_required_field_c,
        sbqq_lookup_type_field_c,
        sbqq_scope_c,
        sbqq_type_c,
        system_modstamp,
        prodly_deploy_note_c

    from source

)

select * from renamed
