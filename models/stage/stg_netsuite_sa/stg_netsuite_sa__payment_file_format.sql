
with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_file_format') }}

),

renamed as (

    select
        payment_file_format_id,
        _fivetran_deleted,
        _fivetran_synced,
        bank_file_template,
        currency,
        date_created,
        date_deleted,
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
        payment_file_format_name,
        payment_file_type_id,
        reference_fields,
        requesters_application_id,
        suitetax_bank_file_template,
        update_entity_bank_details,
        use_advanced_template,
        use_advanced_sepa_dd_sorting,
        encrypt_account_number,
        hide_account_number

    from source

)

select * from renamed
