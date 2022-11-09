
with source as (

    select * from {{ source('raw_weblogs', 'weblogs') }}

),

renamed as (

    select
        id,
        shipper,
        request,
        referer,
        is_https,
        vary,
        x_cache_hits_b,
        end_request,
        x_cache_b,
        x_served_by_b,
        via,
        req_accept_language,
        begin_request,
        file,
        remote_ip,
        x_cache,
        accept_ranges,
        content_type,
        request_start_epoch_s,
        req_cache_control,
        user_agent,
        x_cache_hits,
        content_length,
        x_timer,
        geoip_continent_name,
        geoip_city_name,
        geoip_country_iso_code,
        geoip_region_name,
        geoip_location_lon,
        geoip_location_lat,
        req_accept_encoding,
        req_pragma,
        content_security_policy,
        strict_transport_security,
        verb,
        http_version,
        cache_control,
        bytes_sent,
        bucket,
        cdn_node,
        x_served_by,
        timestamp,
        response,
        elapsed_usec,
        req_accept,
        etag,
        age,
        uuid

    from source

)

select * from renamed
