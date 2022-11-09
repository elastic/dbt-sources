
with source as (

    select * from {{ source('raw_salesforce', 'pse_mass_link_pta_ui_settings_c') }}

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
        pse_assignment_custom_lookup_field_set_c,
        pse_custom_field_set_name_c,
        pse_resource_request_lookup_field_set_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
