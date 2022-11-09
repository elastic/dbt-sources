
with source as (

    select * from {{ source('raw_netsuite', 'avaaddressvalidationbatch_applicable_subsidiarys_map_history') }}

),

renamed as (

    select
        avaaddressvalidationbatch_id,
        subsidiary_id

    from source

)

select * from renamed
