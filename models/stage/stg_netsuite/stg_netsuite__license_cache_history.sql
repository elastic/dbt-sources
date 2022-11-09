
with source as (

    select * from {{ source('raw_netsuite', 'license_cache_history') }}

),

renamed as (

    select
        bundle,
        date_created,
        end_date,
        hval,
        is_inactive,
        last_modified_date,
        license_cache_extid,
        license_cache_id,
        parent_id,
        start_date,
        status_id,
        ttl

    from source

)

select * from renamed
