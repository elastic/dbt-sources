
with source as (

    select * from {{ source('raw_clearbit', 'ip_to_company_view') }}

),

renamed as (

    select
        ip,
        domain,
        name,
        geo_city,
        geo_countrycode,
        geo_postalcode,
        geo_statecode,
        metrics_employees

    from source

)

select * from renamed
