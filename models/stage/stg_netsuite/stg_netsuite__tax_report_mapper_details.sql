
with source as (

    select * from {{ source('raw_netsuite', 'tax_report_mapper_details') }}

),

renamed as (

    select
        date_created,
        detail_internal_id,
        effective_from,
        format,
        is_inactive,
        label,
        language,
        last_modified_date,
        meta,
        parent_id,
        plugin,
        subtype,
        tax_form_schema_id,
        tax_report_mapper_details_exti,
        tax_report_mapper_details_id,
        tax_report_mapper_details_name,
        tax_report_mapper_id,
        tax_report_template_id,
        type_0,
        valid_until

    from source

)

select * from renamed