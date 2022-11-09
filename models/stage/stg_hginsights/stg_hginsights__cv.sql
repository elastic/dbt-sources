
with source as (

    select * from {{ source('raw_hginsights', 'cv') }}

),

renamed as (

    select
        _file,
        _line,
        _modified,
        _fivetran_synced,
        active_status,
        announcement_date,
        company_id,
        company_level,
        contract_id,
        customer_name,
        description,
        duns_id,
        duration,
        end_date,
        geo,
        headline,
        percent,
        role,
        service_line,
        service_line_parent,
        service_line_value,
        signing_country,
        start_date,
        value,
        vendor_duns_id,
        vendor_id,
        vendor_name

    from source

)

select * from renamed
