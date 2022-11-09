
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_alternate_methods') }}

),

renamed as (

    select
        fam_alternate_methods_id,
        _fivetran_deleted,
        _fivetran_synced,
        asset_life,
        convention_id,
        date_created,
        date_deleted,
        depreciation_method_id,
        description,
        fam_alternate_methods_extid,
        fam_alternate_methods_name,
        financial_year_start_id,
        is_inactive,
        last_modified_date,
        override_flag,
        parent_id,
        period_convention_id,
        pool_flag,
        derogatory_depreciation,
        override

    from source

)

select * from renamed
