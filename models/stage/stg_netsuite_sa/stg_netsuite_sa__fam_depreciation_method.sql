
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_depreciation_method') }}

),

renamed as (

    select
        fam_depreciation_method_id,
        _fivetran_deleted,
        _fivetran_synced,
        accrual_convention_id,
        date_created,
        date_deleted,
        depreciation_formula,
        depreciation_method_descripti,
        depreciation_period_id,
        end_period_number,
        fam_depreciation_method_extid,
        fam_depreciation_method_name,
        final_period_convention_id,
        is_inactive,
        last_modified_date,
        next_depreciation_method_id,
        parent_id,
        depreciation_rate_table_id

    from source

)

select * from renamed
