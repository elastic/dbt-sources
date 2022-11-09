
with source as (

    select * from {{ source('raw_salesforce', 'lid_user_oauth_c') }}

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
        lid_access_expiration_c,
        lid_access_expired_c,
        lid_access_token_c,
        lid_refresh_expiration_c,
        lid_refresh_expired_c,
        lid_refresh_token_c,
        lid_sales_access_expiration_c,
        lid_sales_access_expired_c,
        lid_sales_access_token_c,
        lid_user_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
