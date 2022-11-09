
with source as (

    select * from {{ source('raw_netsuite', 'avasubsidiaries') }}

),

renamed as (

    select
        avaconfig_record_id,
        avasubsidiaries_extid,
        avasubsidiaries_id,
        co__address,
        company_address,
        date_created,
        default_avatax_company_code,
        default_tax_code,
        is_inactive,
        last_modified_date,
        nexuses,
        parent_id,
        shipping_address,
        subsidiary_id,
        subsidiary_name

    from source

)

select * from renamed
