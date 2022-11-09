
with source as (

    select * from {{ source('raw_salesforce', 'tenant_secret') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        is_deleted,
        key_derivation_mode,
        last_modified_by_id,
        last_modified_date,
        secret_value_certificate,
        source,
        status,
        system_modstamp,
        type,
        version,
        _fivetran_deleted

    from source

)

select * from renamed
