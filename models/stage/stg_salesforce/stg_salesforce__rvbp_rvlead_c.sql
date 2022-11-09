
with source as (

    select * from {{ source('raw_salesforce', 'rvbp_rvlead_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        rvbp_deal_registration_status_c,
        rvbp_deal_type_c,
        rvbp_fiscal_year_id_c,
        rvbp_partner_lead_acceptance_c,
        rvbp_rvaccount_c,
        rvbp_rvbusiness_plan_quarter_c,
        rvbp_source_converted_date_c,
        rvbp_source_created_date_c,
        rvbp_source_record_c,
        system_modstamp

    from source

)

select * from renamed
