
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_report_mapper_details_history') }}

),

renamed as (

    select
        tax_report_mapper_details_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
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
        tax_report_mapper_details_name,
        tax_report_mapper_id,
        tax_report_template_id,
        type_0,
        valid_until,
        partition_date

    from source

)

select * from renamed
