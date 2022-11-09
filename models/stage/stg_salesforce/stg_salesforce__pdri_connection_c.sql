
with source as (

    select * from {{ source('raw_salesforce', 'pdri_connection_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pdri_access_token_c,
        pdri_active_c,
        pdri_do_not_allow_destination_c,
        pdri_expires_on_c,
        pdri_folder_c,
        pdri_instance_url_c,
        pdri_local_connection_c,
        pdri_org_type_c,
        pdri_organization_id_c,
        pdri_refresh_token_c,
        pdri_source_connection_c,
        pdri_user_email_c,
        pdri_user_full_name_c,
        pdri_user_id_c,
        pdri_username_c,
        system_modstamp,
        pdri_connection_type_c

    from source

)

select * from renamed
