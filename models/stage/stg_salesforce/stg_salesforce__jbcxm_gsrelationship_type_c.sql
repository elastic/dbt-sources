
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gsrelationship_type_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_active_c,
        jbcxm_attributes_c,
        jbcxm_card_config_c,
        jbcxm_definition_c,
        jbcxm_description_c,
        jbcxm_display_order_c,
        jbcxm_layout_attribute_c,
        jbcxm_layout_criteria_c,
        jbcxm_type_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
