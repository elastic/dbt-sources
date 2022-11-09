
with source as (

    select * from {{ source('raw_kickfire', 'lcdetail') }}

),

renamed as (

    select
        statusa,
        name,
        result,
        company,
        pageviews,
        visitdatetime,
        trafficsource,
        adcaminfo,
        city,
        region,
        country,
        telephone,
        address,
        revenue,
        employees,
        industry,
        watchlist,
        ipaddress,
        landingpage,
        website,
        identity,
        leadscore

    from source

)

select * from renamed
