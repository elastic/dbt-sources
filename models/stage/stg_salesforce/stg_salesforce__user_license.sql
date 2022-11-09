
with source as (

    select * from {{ source('raw_salesforce', 'user_license') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_date,
        last_modified_date,
        license_definition_key,
        master_label,
        name,
        status,
        system_modstamp,
        total_licenses,
        used_licenses,
        used_licenses_last_updated,
        _fivetran_deleted

    from source

)

select * from renamed
