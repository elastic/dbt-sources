
with source as (

    select * from {{ source('raw_netsuite', 'fam_depreciation_method_history') }}

),

renamed as (

    select
        accrual_convention_id,
        date_created,
        depreciation_formula,
        depreciation_method_descripti,
        depreciation_period_id,
        end_period_number,
        fam_depreciation_method_extid,
        fam_depreciation_method_id,
        fam_depreciation_method_name,
        final_period_convention_id,
        is_inactive,
        last_modified_date,
        next_depreciation_method_id,
        parent_id

    from source

)

select * from renamed
