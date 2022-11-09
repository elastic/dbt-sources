
with source as (

    select * from {{ source('raw_salesforce', 'tenant_secret_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        id,
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
