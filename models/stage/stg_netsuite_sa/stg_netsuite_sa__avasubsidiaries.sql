
with source as (

    select * from {{ source('raw_netsuite_sa', 'avasubsidiaries') }}

),

renamed as (

    select
        avasubsidiaries_id,
        _fivetran_deleted,
        _fivetran_synced,
        avaconfig_record_id,
        avasubsidiaries_extid,
        co__address,
        company_address,
        date_created,
        date_deleted,
        default_avatax_company_code,
        default_tax_code,
        is_inactive,
        last_modified_date,
        nexuses,
        parent_id,
        shipping_address,
        subsidiary_id,
        subsidiary_name,
        avatax_company_id

    from source

)

select * from renamed
