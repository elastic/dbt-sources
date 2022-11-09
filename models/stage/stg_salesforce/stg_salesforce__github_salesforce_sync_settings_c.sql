
with source as (

    select * from {{ source('raw_salesforce', 'github_salesforce_sync_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        admin_user_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        endpoint_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        token_c

    from source

)

select * from renamed
