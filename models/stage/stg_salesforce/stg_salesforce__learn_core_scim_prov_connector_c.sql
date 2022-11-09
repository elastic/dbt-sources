
with source as (

    select * from {{ source('raw_salesforce', 'learn_core_scim_prov_connector_c') }}

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
        learn_core_enable_debug_loging_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
