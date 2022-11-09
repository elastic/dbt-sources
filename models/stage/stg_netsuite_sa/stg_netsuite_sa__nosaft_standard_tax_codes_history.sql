
with source as (

    select * from {{ source('raw_netsuite_sa', 'nosaft_standard_tax_codes_history') }}

),

renamed as (

    select
        nosaft_standard_tax_codes_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nosaft_standard_tax_codes_exti,
        parent_id,
        standard_tax_code_description,
        standard_tax_code_id,
        standard_tax_code_descriptio_0,
        partition_date

    from source

)

select * from renamed
