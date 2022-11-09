
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_territory_segment_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        system_modstamp,
        lean_data_deployment_segment_c,
        lean_data_draft_file_name_c,
        lean_data_draft_upload_status_c,
        lean_data_fields_used_c,
        lean_data_file_name_c,
        lean_data_ld_business_unit_c,
        lean_data_name_c,
        lean_data_priority_c,
        lean_data_upload_status_c,
        lean_data_version_c

    from source

)

select * from renamed
