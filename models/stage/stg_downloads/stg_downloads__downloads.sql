
with source as (

    select * from {{ source('raw_downloads', 'downloads') }}

),

renamed as (

    select
        id,
        request,
        last_origin,
        geo_country_code2,
        geo_postal_code,
        geo_timezone,
        geo_ip,
        geo_continent_code,
        geo_region_name,
        geo_longitude,
        geo_city_name,
        geo_country_name,
        geo_real_region_name,
        geo_latitude,
        time,
        release_major,
        release_minor,
        release_patch,
        release_build,
        agent,
        size,
        host,
        product,
        project,
        http_method,
        machine,
        code,
        origin,
        version,
        archive

    from source

)

select * from renamed
