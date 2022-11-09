
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_report_mapper') }}

),

renamed as (

    select
        tax_report_mapper_id,
        _fivetran_deleted,
        _fivetran_synced,
        alternate_code,
        country_name_id,
        date_created,
        date_deleted,
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
        tax_report_mapper_name,
        transaction_name_id

    from source

)

select * from renamed
