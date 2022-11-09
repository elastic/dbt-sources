
with source as (

    select * from {{ source('raw_netsuite_sa', 'avaaddressvalidationbatch_applicable_subsidiarys_map') }}

),

renamed as (

    select
        avaaddressvalidationbatch_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
