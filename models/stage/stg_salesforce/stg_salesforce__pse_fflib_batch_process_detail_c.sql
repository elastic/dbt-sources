
with source as (

    select * from {{ source('raw_salesforce', 'pse_fflib_batch_process_detail_c') }}

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
        pse_apex_job_id_c,
        pse_batch_process_c,
        pse_chain_number_c,
        pse_status_c,
        pse_status_detail_c,
        system_modstamp

    from source

)

select * from renamed
