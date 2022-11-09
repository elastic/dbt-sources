
with source as (

    select * from {{ source('raw_salesforce', 'pse_version_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_baseline_c,
        pse_batch_apex_job_id_c,
        pse_batch_process_c,
        pse_notes_c,
        pse_project_c,
        pse_status_c,
        system_modstamp

    from source

)

select * from renamed
