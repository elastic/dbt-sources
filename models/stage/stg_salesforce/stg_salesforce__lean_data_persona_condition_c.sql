
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_persona_condition_c') }}

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
        lean_data_condition_index_c,
        lean_data_field_name_c,
        lean_data_object_type_c,
        lean_data_operator_c,
        lean_data_persona_name_c,
        lean_data_value_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
