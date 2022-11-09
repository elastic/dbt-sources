
with source as (

    select * from {{ source('raw_salesforce', 'package_license') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        allowed_licenses,
        created_date,
        expiration_date,
        is_provisioned,
        last_modified_date,
        namespace_prefix,
        status,
        system_modstamp,
        used_licenses,
        _fivetran_deleted,
        is_available_for_integrations

    from source

)

select * from renamed
