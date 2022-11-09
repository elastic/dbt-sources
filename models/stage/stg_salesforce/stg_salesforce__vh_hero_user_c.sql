
with source as (

    select * from {{ source('raw_salesforce', 'vh_hero_user_c') }}

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
        owner_id,
        system_modstamp,
        vh_has_package_license_c,
        vh_permission_set_names_c,
        vh_user_c

    from source

)

select * from renamed
