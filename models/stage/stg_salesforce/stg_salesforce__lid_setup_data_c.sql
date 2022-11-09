
with source as (

    select * from {{ source('raw_salesforce', 'lid_setup_data_c') }}

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
        lid_enterprise_enabled_c,
        lid_job_cron_string_c,
        lid_job_id_c,
        lid_steps_completed_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
