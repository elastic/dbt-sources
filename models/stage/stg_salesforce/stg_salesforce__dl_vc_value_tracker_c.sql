
with source as (

    select * from {{ source('raw_salesforce', 'dl_vc_value_tracker_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dl_vc_account_c,
        dl_vc_achieved_benefits_c,
        dl_vc_achieved_benefits_raw_c,
        dl_vc_achieved_payback_c,
        dl_vc_achieved_payback_raw_c,
        dl_vc_achieved_roi_c,
        dl_vc_achieved_roi_raw_c,
        dl_vc_business_case_c,
        dl_vc_current_benefits_c,
        dl_vc_current_benefits_raw_c,
        dl_vc_current_payback_c,
        dl_vc_current_payback_raw_c,
        dl_vc_expected_benefits_c,
        dl_vc_expected_benefits_raw_c,
        dl_vc_expected_costs_c,
        dl_vc_expected_costs_raw_c,
        dl_vc_expected_payback_c,
        dl_vc_expected_payback_raw_c,
        dl_vc_expected_roi_c,
        dl_vc_expected_roi_raw_c,
        dl_vc_original_value_prop_id_c,
        dl_vc_value_prop_id_c,
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
