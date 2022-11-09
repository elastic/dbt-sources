
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_profile_permission_setting_c') }}

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
        lean_data_permission_set_id_c,
        lean_data_profile_id_c,
        lean_data_profile_name_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
