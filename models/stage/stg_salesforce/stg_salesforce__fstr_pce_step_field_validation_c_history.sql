
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_step_field_validation_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_data_type_c,
        fstr_field_name_c,
        fstr_field_value_c,
        fstr_joining_operator_c,
        fstr_object_name_c,
        fstr_operator_c,
        fstr_step_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
