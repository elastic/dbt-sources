
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_solution_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        apxtconga_4_button_body_field_c,
        apxtconga_4_button_link_api_name_c,
        apxtconga_4_composer_parameters_c,
        apxtconga_4_conga_email_template_count_c,
        apxtconga_4_custom_object_id_c,
        apxtconga_4_formula_body_field_c,
        apxtconga_4_formula_field_api_name_c,
        apxtconga_4_is_quick_start_c,
        apxtconga_4_launch_c_8_formula_button_c,
        apxtconga_4_master_object_type_c,
        apxtconga_4_master_object_type_validator_c,
        apxtconga_4_sample_record_id_c,
        apxtconga_4_sample_record_name_c,
        apxtconga_4_solution_description_c,
        apxtconga_4_solution_weblink_syntax_c,
        apxtconga_4_weblink_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
