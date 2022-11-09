
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_api_metric_c_history') }}

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
        lean_data_api_type_c,
        lean_data_data_c,
        lean_data_end_time_c,
        lean_data_operation_c,
        lean_data_profile_name_c,
        lean_data_requester_name_c,
        lean_data_requester_type_c,
        lean_data_start_time_c,
        lean_data_status_c,
        lean_data_status_code_c,
        lean_data_type_c,
        lean_data_user_c,
        lean_data_version_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_date_c

    from source

)

select * from renamed
