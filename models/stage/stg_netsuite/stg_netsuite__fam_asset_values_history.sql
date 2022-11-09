
with source as (

    select * from {{ source('raw_netsuite', 'fam_asset_values_history') }}

),

renamed as (

    select
        current_net_book_value,
        date_created,
        fam_asset_values_extid,
        fam_asset_values_id,
        forecast_status_id,
        is_inactive,
        last_depreciation_amount,
        last_depreciation_date,
        last_depreciation_period,
        last_forecast_date,
        last_modified_date,
        parent_asset_id,
        parent_id,
        parent_tax_method_id,
        prior_year_nbv,
        updated_values

    from source

)

select * from renamed
