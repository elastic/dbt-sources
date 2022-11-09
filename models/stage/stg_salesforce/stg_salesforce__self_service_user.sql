
with source as (

    select * from {{ source('raw_salesforce', 'self_service_user') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        contact_id,
        created_by_id,
        created_date,
        email,
        first_name,
        is_active,
        language_locale_key,
        last_login_date,
        last_modified_by_id,
        last_modified_date,
        last_name,
        locale_sid_key,
        name,
        super_user,
        system_modstamp,
        time_zone_sid_key,
        username

    from source

)

select * from renamed
