
with source as (

    select * from {{ source('raw_salesforce', 'user_provisioning_log') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        details,
        external_user_id,
        external_username,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        status,
        system_modstamp,
        user_id,
        user_provisioning_request_id

    from source

)

select * from renamed
