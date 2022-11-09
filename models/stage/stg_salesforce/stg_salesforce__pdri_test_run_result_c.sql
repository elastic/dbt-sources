
with source as (

    select * from {{ source('raw_salesforce', 'pdri_test_run_result_c') }}

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
        pdri_record_id_c,
        pdri_result_c,
        pdri_result_details_c,
        pdri_test_case_c,
        pdri_test_run_c,
        pdri_tested_field_c,
        system_modstamp

    from source

)

select * from renamed
