
with source as (

    select * from {{ source('raw_netsuite', 'fam_alternate_methods_subsidiary_map') }}

),

renamed as (

    select
        fam_alternate_methods_id,
        subsidiary_id

    from source

)

select * from renamed
