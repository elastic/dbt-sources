
with source as (

    select * from {{ source('raw_salesforce', 'psa_custom_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_group_c_c_c,
        pse_practice_c_c,
        pse_region_c_c,
        pse_work_calendar_c_c,
        record_type_id_c,
        setup_owner_id,
        system_modstamp,
        pse_group_c_c

    from source

)

select * from renamed
