
with source as (

    select * from {{ source('raw_salesforce', 'dl_vc_vc_value_proposition_group_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dl_vc_value_prop_group_id_c,
        dl_vc_vpg_benefits_per_transaction_c,
        dl_vc_vpg_cost_of_delay_c,
        dl_vc_vpg_npv_c,
        dl_vc_vpg_opportunity_c,
        dl_vc_vpg_payback_c,
        dl_vc_vpg_roi_c,
        dl_vc_vpg_status_c,
        dl_vc_vpg_status_id_c,
        dl_vc_vpg_tco_c,
        dl_vc_vpg_term_c,
        dl_vc_vpg_total_benefits_c,
        dl_vc_vpg_total_costs_c,
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
