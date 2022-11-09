
with source as (

    select * from {{ source('raw_salesforce', 'pdri_deployment_activity_entry_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pdri_activity_date_time_c,
        pdri_category_c,
        pdri_deployment_data_set_result_c,
        pdri_deployment_result_c,
        pdri_error_code_c,
        pdri_error_key_c,
        pdri_level_c,
        pdri_message_c,
        pdri_source_error_c,
        pdri_subject_c,
        system_modstamp

    from source

)

select * from renamed
