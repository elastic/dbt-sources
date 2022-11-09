
with source as (

    select * from {{ source('raw_salesforce', 'auth_config_providers_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        auth_config_id,
        auth_provider_id,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
