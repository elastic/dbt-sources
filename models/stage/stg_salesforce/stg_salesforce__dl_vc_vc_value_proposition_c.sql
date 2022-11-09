
with source as (

    select * from {{ source('raw_salesforce', 'dl_vc_vc_value_proposition_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dl_vc_cost_of_delay_c,
        dl_vc_discovery_answer_10_c,
        dl_vc_discovery_answer_1_c,
        dl_vc_discovery_answer_2_c,
        dl_vc_discovery_answer_3_c,
        dl_vc_discovery_answer_4_c,
        dl_vc_discovery_answer_5_c,
        dl_vc_discovery_answer_6_c,
        dl_vc_discovery_answer_7_c,
        dl_vc_discovery_answer_8_c,
        dl_vc_discovery_answer_9_c,
        dl_vc_discovery_question_10_c,
        dl_vc_discovery_question_1_c,
        dl_vc_discovery_question_2_c,
        dl_vc_discovery_question_3_c,
        dl_vc_discovery_question_4_c,
        dl_vc_discovery_question_5_c,
        dl_vc_discovery_question_6_c,
        dl_vc_discovery_question_7_c,
        dl_vc_discovery_question_8_c,
        dl_vc_discovery_question_9_c,
        dl_vc_npv_c,
        dl_vc_payback_c,
        dl_vc_roi_c,
        dl_vc_status_c,
        dl_vc_status_id_c,
        dl_vc_tco_c,
        dl_vc_term_c,
        dl_vc_total_benefits_c,
        dl_vc_total_costs_c,
        dl_vc_vc_go_to_customer_c,
        dl_vc_vc_opportunity_c,
        dl_vc_vc_use_in_dashboard_c,
        dl_vc_vc_value_prop_id_c,
        dl_vc_vc_vp_status_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp

    from source

)

select * from renamed
