
with source as (

    select * from {{ source('raw_netsuite_sa', 'nosaft_alternative_tax_codes') }}

),

renamed as (

    select
        nosaft_alternative_tax_code_id,
        _fivetran_deleted,
        _fivetran_synced,
        alternative_tax_code,
        alternative_tax_code_descript,
        alternative_tax_code_transa_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nosaft_alternative_tax_code_ex,
        parent_id,
        tax_code

    from source

)

select * from renamed
