
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_record_job_c') }}

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
        sbqq_is_read_c,
        sbqq_job_details_c,
        sbqq_job_id_c,
        sbqq_job_status_c,
        sbqq_record_id_c,
        sbqq_redirect_url_c,
        sbqq_stacktrace_c,
        system_modstamp

    from source

)

select * from renamed
