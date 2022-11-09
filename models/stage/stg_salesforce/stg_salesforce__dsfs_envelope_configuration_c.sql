
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_envelope_configuration_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dsfs_active_c,
        dsfs_cem_c,
        dsfs_ces_c,
        dsfs_expire_after_c,
        dsfs_expire_enabled_c,
        dsfs_expire_warn_c,
        dsfs_expires_c,
        dsfs_la_c,
        dsfs_lf_c,
        dsfs_load_default_contacts_c,
        dsfs_object_type_c,
        dsfs_oco_c,
        dsfs_reminder_delay_c,
        dsfs_reminder_enabled_c,
        dsfs_reminder_frequency_c,
        dsfs_saa_c,
        dsfs_scs_c,
        dsfs_sem_c,
        dsfs_ses_c,
        dsfs_srs_c,
        dsfs_ssb_c,
        dsfs_stb_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
