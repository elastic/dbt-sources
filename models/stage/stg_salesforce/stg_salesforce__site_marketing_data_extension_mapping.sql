
with source as (

    select * from {{ source('raw_salesforce', 'site_marketing_data_extension_mapping') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_active,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        marketing_data_extension,
        marketing_data_extension_fields_schema,
        marketing_member_identification,
        marketing_tenant_specific_auth_endpoint,
        marketing_tenant_specific_rest_endpoint,
        name,
        site_id,
        system_modstamp

    from source

)

select * from renamed
