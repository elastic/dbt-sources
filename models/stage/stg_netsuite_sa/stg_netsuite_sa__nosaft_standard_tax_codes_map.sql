
with source as (

    select * from {{ source('raw_netsuite_sa', 'nosaft_standard_tax_codes_map') }}

),

renamed as (

    select
        nosaft_standard_tax_codes_m_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        mapping_category_id,
        nosaft_standard_tax_codes_m_ex,
        parent_id,
        standard_tax_codes_key,
        standard_tax_codes_value_id,
        subsidiary_id,
        country_id

    from source

)

select * from renamed
