
with source as (

    select * from {{ source('raw_salesforce', 'infer_3_infer_scoring_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        infer_3_enable_account_scoring_c,
        infer_3_enable_contact_scoring_c,
        infer_3_enable_lead_scoring_c,
        infer_3_enable_opportunity_scoring_c,
        infer_3_score_bucket_1_label_c,
        infer_3_score_bucket_1_threshold_c,
        infer_3_score_bucket_2_label_c,
        infer_3_score_bucket_2_threshold_c,
        infer_3_score_bucket_3_label_c,
        infer_3_score_bucket_3_threshold_c,
        infer_3_score_bucket_4_label_c,
        infer_3_update_account_with_score_update_c,
        infer_3_update_contact_with_score_update_c,
        infer_3_update_lead_with_score_update_c,
        infer_3_update_opportunity_with_score_update_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
