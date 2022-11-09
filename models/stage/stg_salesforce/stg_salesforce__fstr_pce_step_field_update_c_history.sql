
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_step_field_update_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_data_type_c,
        fstr_destination_field_c,
        fstr_destination_lookup_field_c,
        fstr_destination_object_c,
        fstr_field_name_c,
        fstr_field_value_adjustment_c,
        fstr_field_value_c,
        fstr_is_child_step_destination_c,
        fstr_is_child_step_source_c,
        fstr_object_name_c,
        fstr_parent_object_name_c,
        fstr_parent_step_name_c,
        fstr_source_field_c,
        fstr_source_lookup_field_c,
        fstr_source_object_c,
        fstr_step_c,
        fstr_type_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
