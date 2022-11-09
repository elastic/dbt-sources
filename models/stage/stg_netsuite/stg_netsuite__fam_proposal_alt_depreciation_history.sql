
with source as (

    select * from {{ source('raw_netsuite', 'fam_proposal_alt_depreciation_history') }}

),

renamed as (

    select
        accounting_book_id,
        alternate_method_id,
        asset_account_id,
        asset_life_al,
        convention_c_id,
        date_created,
        depreciation_account_id,
        depreciation_charge_account_id,
        depreciation_method_id,
        depreciation_period_id,
        disposal_cost_account_id,
        fam_proposal_alt_depreciati_ex,
        fam_proposal_alt_depreciati_id,
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
        write_off_account_id

    from source

)

select * from renamed
