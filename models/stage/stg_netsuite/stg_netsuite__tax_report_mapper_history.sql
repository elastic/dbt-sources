
with source as (

    select * from {{ source('raw_netsuite', 'tax_report_mapper_history') }}

),

renamed as (

    select
        alternate_code,
        country_name_id,
        date_created,
        format_supplementary_reports,
        internal_id,
        is_eu_country,
        is_filter_by_location,
        is_inactive,
        is_nondeductible,
        is_tax_filing,
        last_modified_date,
        location_id,
        map_type,
        parent_id,
        tax_report_mapper_extid,
        tax_report_mapper_id,
        tax_report_mapper_name,
        transaction_name_id

    from source

)

select * from renamed
