
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_price_rule_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        change_history_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_active_c,
        sbqq_advanced_condition_c,
        sbqq_conditions_met_c,
        sbqq_configurator_evaluation_event_c,
        sbqq_evaluation_event_c,
        sbqq_evaluation_order_c,
        sbqq_lookup_object_c,
        sbqq_product_c,
        sbqq_target_object_c,
        system_modstamp,
        deploy_version_c

    from source

)

select * from renamed
