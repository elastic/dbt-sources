
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_default_alt_depreciation_subsidiary_map') }}

),

renamed as (

    select
        fam_default_alt_depreciatio_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
