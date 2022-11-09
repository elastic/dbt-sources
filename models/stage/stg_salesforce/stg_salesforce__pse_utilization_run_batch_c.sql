
with source as (

    select * from {{ source('raw_salesforce', 'pse_utilization_run_batch_c') }}

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
        pse_error_c,
        pse_status_c,
        pse_utilization_run_c,
        system_modstamp,
        pse_apex_job_id_c

    from source

)

select * from renamed
