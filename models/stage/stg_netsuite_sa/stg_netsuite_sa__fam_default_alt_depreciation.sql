
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_default_alt_depreciation') }}

),

renamed as (

    select
        fam_default_alt_depreciatio_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book_id,
        alternate_method_id,
        asset_account_id,
        asset_life_al,
        asset_type_id,
        convention_c_id,
        date_created,
        date_deleted,
        depreciation_account_id,
        depreciation_charge_account_id,
        depreciation_method_id,
        depreciation_period_id,
        disposal_cost_account_id,
        fam_default_alt_depreciatio_ex,
        financial_year_start_id,
        is_inactive,
        last_modified_date,
        parent_id,
        period_convention_id,
        posting,
        residual_percentage,
        write_down_account_id,
        write_off_account_id,
        derogation_provisions_writt_id,
        derogation_provisions_accou_id,
        appropriations_to_derogatio_id,
        depreciation_rules_id

    from source

)

select * from renamed
