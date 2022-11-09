
with source as (

    select * from {{ source('raw_netsuite', 'tax_field_notation_history') }}

),

renamed as (

    select
        date_created,
        description_list_of_value_des,
        form_field_id,
        is_inactive,
        language_code_6391,
        language_code_6392,
        last_modified_date,
        notation_internal_id,
        operator_0,
        parent_id,
        sequence_0,
        tax_field_notation_extid,
        tax_field_notation_id,
        tax_field_notation_name,
        tax_field_schema_id,
        value_list_of_value

    from source

)

select * from renamed
