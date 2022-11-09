
with source as (

    select * from {{ source('raw_clearbit', 'reveal') }}

),

renamed as (

    select
        id,
        ip,
        lookup_timestamp,
        found,
        domain,
        companyid,
        type,
        fuzzy,
        geoip_city,
        geoip_state,
        geoip_statecode,
        geoip_country,
        geoip_countrycode,
        hostname,
        connection_isp

    from source

)

select * from renamed
