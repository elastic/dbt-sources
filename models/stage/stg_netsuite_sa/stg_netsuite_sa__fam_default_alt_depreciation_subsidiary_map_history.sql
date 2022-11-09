
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_default_alt_depreciation_subsidiary_map_history') }}

),

renamed as (

    select
        fam_default_alt_depreciatio_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
