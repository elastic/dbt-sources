
with source as (

    select * from {{ source('raw_salesforce', 'vault_setting_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        outer_object_key_c,
        password_identifier_c,
        path_to_secret_c,
        role_id_c,
        secret_id_c,
        setup_owner_id,
        system_modstamp,
        token_endpoint_c,
        user_name_c

    from source

)

select * from renamed
