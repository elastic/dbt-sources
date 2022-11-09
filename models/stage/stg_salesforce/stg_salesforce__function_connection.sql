
with source as (

    select * from {{ source('raw_salesforce', 'function_connection') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        error,
        functions_account_login_org,
        functions_account_name,
        functions_account_uuid,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        sequence,
        status,
        system_modstamp

    from source

)

select * from renamed
