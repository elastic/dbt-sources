
with source as (

    select * from {{ source('raw_salesforce', 'external_data_user_auth_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        auth_provider_id,
        created_by_id,
        created_date,
        external_data_source_id,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        password,
        protocol,
        system_modstamp,
        user_id,
        username,
        _fivetran_deleted

    from source

)

select * from renamed
