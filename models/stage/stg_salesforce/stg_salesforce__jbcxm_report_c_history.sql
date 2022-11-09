
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_report_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        jbcxm_description_c,
        jbcxm_entity_type_c,
        jbcxm_is_active_c,
        jbcxm_meta_data_c,
        jbcxm_overall_display_order_c,
        jbcxm_relationship_type_c,
        jbcxm_report_params_c,
        jbcxm_template_c,
        jbcxm_title_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
