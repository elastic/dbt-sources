
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_fflib_batch_process_detail_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_apex_job_id_c,
        ffrr_batch_process_c,
        ffrr_chain_number_c,
        ffrr_status_c,
        ffrr_status_detail_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
