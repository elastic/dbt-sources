
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_proposal_alt_depreciation_history') }}

),

renamed as (

    select
        fam_proposal_alt_depreciati_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book_id,
        alternate_method_id,
        asset_account_id,
        asset_life_al,
        convention_c_id,
        date_created,
        date_deleted,
        depreciation_account_id,
        depreciation_charge_account_id,
        depreciation_method_id,
        depreciation_period_id,
        disposal_cost_account_id,
        fam_proposal_alt_depreciati_ex,
        financial_year_start_id,
        is_inactive,
        last_modified_date,
        parent_id,
        period_convention_id,
        posting,
        proposal_id,
        residual_value_percentage,
        subsidiary_id,
        write_down_account_id,
        write_off_account_id,
        derogation_provisions_writt_id,
        derogation_provisions_accou_id,
        derogatory_depreciation,
        appropriations_to_derogatio_id,
        partition_date

    from source

)

select * from renamed
