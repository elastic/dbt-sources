
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_fflib_batch_process_detail_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_apex_job_id_c,
        ffirule_batch_process_c,
        ffirule_chain_number_c,
        ffirule_status_c,
        ffirule_status_detail_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
