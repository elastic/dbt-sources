
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_report_template') }}

),

renamed as (

    select
        tax_report_template_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_id,
        date_created,
        date_deleted,
        format,
        handle_bars,
        is_inactive,
        language,
        last_modified_date,
        note,
        parent_id,
        short_content,
        tax_form_schema_id,
        tax_report_template_extid,
        tax_report_template_name

    from source

)

select * from renamed
