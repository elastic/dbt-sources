
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_alert_c_history') }}

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
        jbcxm_account_c,
        jbcxm_associated_object_display_value_c,
        jbcxm_associated_object_record_id_c,
        jbcxm_associated_object_record_value_c,
        jbcxm_asv_c,
        jbcxm_comment_c,
        jbcxm_date_c,
        jbcxm_linked_to_nps_c,
        jbcxm_linked_to_usage_c,
        jbcxm_mrr_c,
        jbcxm_next_step_comment_c,
        jbcxm_next_step_date_c,
        jbcxm_next_step_owner_c,
        jbcxm_reason_c,
        jbcxm_severity_c,
        jbcxm_status_c,
        jbcxm_type_c,
        jbcxm_unique_id_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
