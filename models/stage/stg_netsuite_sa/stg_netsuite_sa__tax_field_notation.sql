
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_field_notation') }}

),

renamed as (

    select
        tax_field_notation_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
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
        tax_field_notation_name,
        tax_field_schema_id,
        value_list_of_value

    from source

)

select * from renamed
