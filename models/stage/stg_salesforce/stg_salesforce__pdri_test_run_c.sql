
with source as (

    select * from {{ source('raw_salesforce', 'pdri_test_run_c') }}

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
        pdri_status_c,
        pdri_status_details_c,
        pdri_test_run_date_time_c,
        system_modstamp,
        pdri_scheduled_job_key_c

    from source

)

select * from renamed
