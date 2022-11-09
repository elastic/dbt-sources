
with source as (

    select * from {{ source('raw_netsuite', 'fam_alternate_methods_history') }}

),

renamed as (

    select
        asset_life,
        convention_id,
        date_created,
        depreciation_method_id,
        description,
        fam_alternate_methods_extid,
        fam_alternate_methods_id,
        fam_alternate_methods_name,
        financial_year_start_id,
        is_inactive,
        last_modified_date,
        override_flag,
        parent_id,
        period_convention_id,
        pool_flag

    from source

)

select * from renamed
