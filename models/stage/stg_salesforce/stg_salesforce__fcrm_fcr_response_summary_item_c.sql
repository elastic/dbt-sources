
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_fcr_response_summary_item_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_admin_full_update_id_c,
        fcrm_campaign_filter_c,
        fcrm_cascade_parent_c,
        fcrm_closed_op_revenue_model_1_c,
        fcrm_closed_op_revenue_model_2_c,
        fcrm_closed_op_revenue_model_3_c,
        fcrm_delete_pending_c,
        fcrm_item_count_c,
        fcrm_item_type_c,
        fcrm_lost_op_revenue_model_1_c,
        fcrm_lost_op_revenue_model_2_c,
        fcrm_lost_op_revenue_model_3_c,
        fcrm_net_new_lead_count_c,
        fcrm_open_op_revenue_model_1_c,
        fcrm_open_op_revenue_model_2_c,
        fcrm_open_op_revenue_model_3_c,
        fcrm_qrand_net_new_c,
        fcrm_qrcount_c,
        fcrm_record_date_c,
        fcrm_response_status_counts_c,
        fcrm_response_status_names_c,
        fcrm_response_status_other_c,
        fcrm_sarcount_c,
        fcrm_sardays_c,
        fcrm_source_c,
        fcrm_sqrcount_c,
        fcrm_sqrdays_c,
        fcrm_sqrwon_count_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        fcrm_record_month_c,
        fcrm_record_week_c

    from source

)

select * from renamed
