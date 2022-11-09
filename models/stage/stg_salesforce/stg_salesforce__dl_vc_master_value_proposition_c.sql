
with source as (

    select * from {{ source('raw_salesforce', 'dl_vc_master_value_proposition_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dl_vc_cost_of_delay_c,
        dl_vc_master_value_prop_id_c,
        dl_vc_npv_c,
        dl_vc_opportunity_c,
        dl_vc_payback_c,
        dl_vc_roi_c,
        dl_vc_tco_c,
        dl_vc_total_benefits_c,
        dl_vc_total_costs_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
