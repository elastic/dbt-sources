
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gsrelationship_section_c') }}

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
        jbcxm_config_c,
        jbcxm_default_filter_c,
        jbcxm_display_order_c,
        jbcxm_gslayout_c,
        jbcxm_in_account_widget_c,
        jbcxm_in_opportunity_widget_c,
        jbcxm_in_relationship_360_c,
        jbcxm_label_c,
        jbcxm_relationship_type_c,
        jbcxm_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
