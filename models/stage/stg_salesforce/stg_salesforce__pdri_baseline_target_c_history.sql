
with source as (

    select * from {{ source('raw_salesforce', 'pdri_baseline_target_c_history') }}

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
        pdri_field_name_c,
        pdri_object_name_c,
        pdri_record_id_c,
        pdri_test_case_c,
        pdri_tested_field_c,
        pdri_value_c,
        system_modstamp

    from source

)

select * from renamed
