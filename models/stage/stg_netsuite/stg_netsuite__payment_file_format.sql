
with source as (

    select * from {{ source('raw_netsuite', 'payment_file_format') }}

),

renamed as (

    select
        bank_file_template,
        currency,
        date_created,
        entity_reference_fields,
        field_validator,
        file_fields,
        from_localization_suiteapp,
        include_all_currencies,
        is_inactive,
        last_modified_date,
        maximum_lines,
        native_format,
        output_file_encoding_id,
        output_file_extension,
        parent_id,
        payment_file_format_extid,
        payment_file_format_id,
        payment_file_format_name,
        payment_file_type_id,
        reference_fields,
        requesters_application_id,
        suitetax_bank_file_template,
        update_entity_bank_details,
        use_advanced_template

    from source

)

select * from renamed
