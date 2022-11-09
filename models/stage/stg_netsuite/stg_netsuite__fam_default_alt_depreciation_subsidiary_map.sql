
with source as (

    select * from {{ source('raw_netsuite', 'fam_default_alt_depreciation_subsidiary_map') }}

),

renamed as (

    select
        fam_default_alt_depreciatio_id,
        subsidiary_id

    from source

)

select * from renamed
