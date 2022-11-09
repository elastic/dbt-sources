
with source as (

    select * from {{ source('raw_salesforce', 'fstr_process_field_mapping_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_actual_field_c,
        fstr_expected_field_c,
        fstr_object_name_c,
        fstr_parent_process_object_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
