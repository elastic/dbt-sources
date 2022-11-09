
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_composer_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        apxtconga_4_comments_c,
        apxtconga_4_disable_c_7_triggers_c,
        apxtconga_4_production_org_id_c,
        apxtconga_4_server_override_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed