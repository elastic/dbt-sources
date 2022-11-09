
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_action_templates_c_history') }}

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
        jbcxm_action_count_c,
        jbcxm_action_index_c,
        jbcxm_action_info_c,
        jbcxm_action_type_c,
        jbcxm_automated_alert_rules_c,
        jbcxm_external_id_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
